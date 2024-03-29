CREATE OR REPLACE PACKAGE BODY GAME_PQ01 IS

    --jcanales 11/13/2021 (Registers players to start a new game)
    PROCEDURE INS_PLAYERS_NEW_GAME(P_NAME1 VARCHAR2, P_NAME2 VARCHAR2) IS
    
        V_EXIST_PLAYER1 BOOLEAN;
        V_EXIST_PLAYER2 BOOLEAN;
        
    BEGIN
         --set all players in non playing
        PLAYER_PQ01.ALL_PLAYERS_NOT_PLAYING;
    
        --checks if the names are already in the DB if not, insert them, is yes let them ready to play
        V_EXIST_PLAYER1 := PLAYER_PQ01.IS_PLAYER_INSERTED(P_NAME1);
        IF V_EXIST_PLAYER1 = TRUE THEN
             DBMS_OUTPUT.PUT_LINE('------------------------------');
             PLAYER_PQ01.PLAYER_READY_TOPLAY(P_NAME1);
             DBMS_OUTPUT.PUT_LINE('------------------------------');
        ELSE
            DBMS_OUTPUT.PUT_LINE('------------------------------');
            PLAYER_PQ01.INSERT_NEW_PLAYER(P_NAME1);
            DBMS_OUTPUT.PUT_LINE('------------------------------');
            PLAYER_PQ01.PLAYER_READY_TOPLAY(P_NAME1);
            DBMS_OUTPUT.PUT_LINE('------------------------------');
        END IF;
        
        V_EXIST_PLAYER2 := PLAYER_PQ01.IS_PLAYER_INSERTED(P_NAME2);
            IF V_EXIST_PLAYER2 = TRUE THEN
                DBMS_OUTPUT.PUT_LINE('------------------------------');
                PLAYER_PQ01.PLAYER_READY_TOPLAY(P_NAME2);
                DBMS_OUTPUT.PUT_LINE('------------------------------');
            ELSE
                DBMS_OUTPUT.PUT_LINE('------------------------------');
                PLAYER_PQ01.INSERT_NEW_PLAYER(P_NAME2);
                DBMS_OUTPUT.PUT_LINE('------------------------------');
                PLAYER_PQ01.PLAYER_READY_TOPLAY(P_NAME2);
                DBMS_OUTPUT.PUT_LINE('------------------------------');
            END IF;
        --Raise complete_players flag
        --TODO: TRIGGER QUE CUANDO SE CAMBIA A Y GENERE EL TABLERO.
        GAME_FLAGS_PQ01.UPD_FLAG_STATUS('STARTED','Y');
        
        --se levante los turnos de los jugadores
        GAME_PQ01.SELECT_PLAYER_TURN(P_NAME1,P_NAME2);
        
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Ha ocurrido alg�n error, intente nuevamente, soy game_pq01 INS_PLAYERS_NEW_GAME');
                
    END INS_PLAYERS_NEW_GAME;
    
    --jcanales 11/13/2021 (defines who is gonna start the game)
    PROCEDURE SELECT_PLAYER_TURN(P_NAME1 VARCHAR2, P_NAME2 VARCHAR2) IS
    
     V_PLAYER1        NUMBER;
     V_PLAYER2        NUMBER;
     V_RANDOM_NUMBER  NUMBER;
     V_STARTER_PLAYER VARCHAR2(50);
    
    BEGIN
        SELECT ID INTO V_PLAYER1 FROM PLAYERS WHERE NAME = UPPER(P_NAME1);
        SELECT ID INTO V_PLAYER2 FROM PLAYERS WHERE NAME = UPPER(P_NAME2);
        
        SELECT ROUND(DBMS_RANDOM.VALUE (1, 2)) INTO V_RANDOM_NUMBER FROM DUAL;
        
        IF V_RANDOM_NUMBER = 1 THEN
            UPDATE CHESS.PLAYERS SET IS_TURN = 1 WHERE ID = V_PLAYER1;
        ELSE
            UPDATE CHESS.PLAYERS SET IS_TURN = 1 WHERE ID = V_PLAYER2;
        END IF;
        
        SELECT NAME INTO V_STARTER_PLAYER FROM PLAYERS WHERE IS_TURN = 1;
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        DBMS_OUTPUT.PUT_LINE('El jugador a iniciar ser�: '||V_STARTER_PLAYER||'!!!!!');
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.PUT_LINE('FALTA ALGUIEN LOL');
    
    END SELECT_PLAYER_TURN;
    
    
    --jcanales 11/23/2021 (ends game)
    PROCEDURE END_GAME IS
    
        V_WINNER CHESS.PLAYERS%ROWTYPE;
        V_LOOSER CHESS.PLAYERS%ROWTYPE;    
    BEGIN
        SELECT ID ,NAME ,VICTORIES ,STATUS ,IS_TURN,LOSSES,EMPTS INTO V_WINNER FROM PLAYERS WHERE STATUS = 'Y_PLAYING' AND IS_TURN = 1;
         SELECT ID ,NAME ,VICTORIES ,STATUS ,IS_TURN,LOSSES,EMPTS INTO V_LOOSER FROM PLAYERS WHERE STATUS = 'Y_PLAYING' AND IS_TURN = 0;
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        DBMS_OUTPUT.PUT_LINE('JAQUE MATE!!! el jugador: '||V_WINNER.NAME||' se lleva la victoria');
        DBMS_OUTPUT.PUT_LINE('------------------------------');
        
        --adds a win
        PLAYER_PQ01.ADD_WIN(V_WINNER.ID);
        
        --adds a loose
        PLAYER_PQ01.ADD_LOOSE(V_LOOSER.ID);
        
        --changes game flag
        GAME_FLAGS_PQ01.UPD_FLAG_STATUS('STARTED','N');
    
        --cleans the board
        BOARD_PQ01.CLEAN_BOARD;
    
    END END_GAME;
    
    
       
    --jcanales 11/23/2021 (its a tie)
    PROCEDURE TIE_GAME IS
        
            CURSOR PLAYERS IS
                SELECT ID ,NAME ,VICTORIES ,STATUS ,IS_TURN  FROM PLAYERS WHERE STATUS = 'Y_PLAYING';
    BEGIN
    
        FOR PLAYER IN PLAYERS LOOP
            UPDATE PLAYERS SET EMPTS = ((SELECT EMPTS FROM PLAYERS WHERE ID = PLAYER.ID)+1) WHERE ID = PLAYER.ID;
        END LOOP;
        
        UPDATE PLAYERS SET STATUS = 'N_PLAYING', IS_TURN = 0 WHERE STATUS = 'Y_PLAYING';
        
        --changes game flag
        GAME_FLAGS_PQ01.UPD_FLAG_STATUS('STARTED','N');
        
        --cleans the board
        BOARD_PQ01.CLEAN_BOARD;
        
    END TIE_GAME;
    

END GAME_PQ01;
/


