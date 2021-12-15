DECLARE

    V_CORD_SOURCE VARCHAR(10) := '&CORD1';
    V_CORD_TARGET VARCHAR(10) := '&CORD2';

BEGIN

    board_pq01.PRINT_TABLE;
    --VER SI ES LA COORDENADA DE GANAR
    IF V_CORD_SOURCE = 'W10' AND V_CORD_TARGET = 'W10' THEN
        GAME_PQ01.END_GAME;
        board_pq01.init_board;
    ELSIF V_CORD_SOURCE = 'T10' AND V_CORD_TARGET = 'T10' THEN
        GAME_PQ01.TIE_GAME;
        board_pq01.init_board;
    ELSE
        MOVES_PQ01.MOVE_PIECE(V_CORD_SOURCE,V_CORD_TARGET);
    END IF;
    
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Ha ocurrido algun error dentro del proceso de mover una pieza');
END;
/