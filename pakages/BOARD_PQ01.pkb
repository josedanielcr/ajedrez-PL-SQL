CREATE OR REPLACE PACKAGE BODY BOARD_PQ01 IS

    --jcanales 11/14/2021 (Fills the board with all the pieces)
    PROCEDURE INIT_BOARD IS
    
        IS_UPPER BOOLEAN := TRUE;
        
    BEGIN
        BOARD_PQ01.CLEAN_BOARD;
    
        FOR X IN 1..2 LOOP
            IF IS_UPPER = TRUE THEN
                UPDATE BOARD SET A='P',B='P',C='P', D='P', E='P', F='P', G='P', H='P' WHERE FILA = X+6;
                UPDATE BOARD SET A='T',B='C',C='A', D='R', E='D', F='A', G='C', H='T' WHERE FILA = X+7;
            ELSE
                UPDATE BOARD SET A='p',B='p',C='p', D='p', E='p', F='p', G='p', H='p' WHERE FILA = X;
                UPDATE BOARD SET A='t',B='c',C='a', D='d', E='r', F='a', G='c', H='t' WHERE FILA = X-1;
            END IF;
            IS_UPPER := FALSE;
        END LOOP;
    
    END INIT_BOARD;
    
     --jcanales 11/14/2021 (cleans board)
    PROCEDURE CLEAN_BOARD IS
    BEGIN
        --cleans the board(everytime the game is initialized)
        UPDATE BOARD SET A=' ',B=' ',C=' ', D=' ', E=' ', F=' ', G=' ', H=' ';
    END CLEAN_BOARD;


END BOARD_PQ01;
/