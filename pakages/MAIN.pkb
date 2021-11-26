CREATE OR REPLACE PACKAGE BODY MAIN IS

    --jcanales 11/13/2021 (Start new game by asking for players names)
    PROCEDURE START_GAME_PLAYERS(P_NAME1 VARCHAR2, P_NAME2 VARCHAR2) IS
    BEGIN
        GAME_PQ01.INS_PLAYERS_NEW_GAME(P_NAME1, P_NAME2);
    END START_GAME_PLAYERS;
    
    
    --jcanales 11/23/2021 (moves a piece of chess)
    PROCEDURE MOVE_CHESS_PIECE(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2) IS
        V_IS_STARTED VARCHAR2(20);
    BEGIN
    
        SELECT STATUS INTO V_IS_STARTED FROM GAME_FLAGS WHERE NAME = 'STARTED';
        IF V_IS_STARTED = 'Y' THEN
            --checks if the source and target cord are the checkmate cords
            IF (P_CORD_SOURCE = 'X10' AND P_CORD_TARGET = 'X10') THEN
                --procedimiento para terminar el juego ***
                GAME_PQ01.END_GAME;
            ELSE
                GAME_PQ01.MOVE_PIECE(P_CORD_SOURCE, P_CORD_TARGET);
            END IF;
             
        ELSE 
            DBMS_OUTPUT.PUT_LINE('------------------------------');
            DBMS_OUTPUT.PUT_LINE('No existe un juego activo, inicie uno para mover una ficha');
            DBMS_OUTPUT.PUT_LINE('------------------------------');
        END IF;
        
        
    
      
    
    
    END MOVE_CHESS_PIECE;
END MAIN;
/