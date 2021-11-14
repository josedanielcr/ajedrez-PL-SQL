CREATE OR REPLACE PACKAGE BODY PLAYER_PQ01 IS

    --jcanales 11/13/2021 (Creates a new player on the players table)
    PROCEDURE INSERT_NEW_PLAYER(P_NAME VARCHAR2) IS
        
        V_DUPLICATE_NAME CHESS.PLAYERS.NAME%TYPE;
        
    BEGIN
    
        SELECT NAME INTO V_DUPLICATE_NAME FROM PLAYERS WHERE NAME = UPPER(P_NAME);
        DBMS_OUTPUT.PUT_LINE('El jugador ingresado ya se encuentra en los registros de la base de datos');
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                INSERT INTO PLAYERS(NAME,VICTORIES,STATUS) VALUES(UPPER(P_NAME),0,'N_PLAYING');
                DBMS_OUTPUT.PUT_LINE('Jugador '||P_NAME||' Creado! listo para el juego');
                COMMIT;
    
    END INSERT_NEW_PLAYER;
    
    --jcanales 11/13/2021 (Deletes an existing player)
    PROCEDURE DELETE_PLAYER(P_ID_PLAYER NUMBER) IS
    
         V_DUPLICATE_ID CHESS.PLAYERS.ID%TYPE;
        
    BEGIN
        SELECT ID INTO V_DUPLICATE_ID FROM PLAYERS WHERE ID = P_ID_PLAYER;
        DELETE FROM PLAYERS WHERE ID = V_DUPLICATE_ID;
         COMMIT;
        
    EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('El jugador ingresado no existe en la base de datos');
                
    END DELETE_PLAYER;
    
    
    --jcanales 11/13/2021 (Checks if a player exist, returns true if yes)
    FUNCTION IS_PLAYER_INSERTED(P_NAME IN VARCHAR2) RETURN BOOLEAN IS 
    
        V_EXIST_NAME CHESS.PLAYERS.NAME%TYPE;
    BEGIN
    
        SELECT NAME INTO V_EXIST_NAME FROM PLAYERS WHERE NAME = UPPER(P_NAME);
        RETURN TRUE;
        
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RETURN FALSE;
    
    END IS_PLAYER_INSERTED;
    
    
    --jcanales 11/13/2021 (RAISE PLAYING FLAG FOR A PLAYER)
    PROCEDURE PLAYER_READY_TOPLAY(P_NAME IN VARCHAR2) IS
        
        V_PLAYER_EXIST BOOLEAN;
    
    BEGIN
    
        V_PLAYER_EXIST := PLAYER_PQ01.IS_PLAYER_INSERTED(P_NAME);
        IF V_PLAYER_EXIST = TRUE THEN
            UPDATE PLAYERS SET STATUS='Y_PLAYING' WHERE NAME = UPPER(P_NAME);
            DBMS_OUTPUT.PUT_LINE('Jugador '||P_NAME||', listo para el juego!');
            COMMIT;
        END IF;
    
    END PLAYER_READY_TOPLAY;
    
    
    --jcanales 11/13/2021 (Sets all players status to NON_PLAYING)
    PROCEDURE ALL_PLAYERS_NOT_PLAYING IS
    BEGIN
        UPDATE PLAYERS SET STATUS='N_PLAYING',IS_TURN = 0;
         COMMIT;
    END ALL_PLAYERS_NOT_PLAYING;

END PLAYER_PQ01;
/



