CREATE OR REPLACE PACKAGE GAME_PQ01 IS

    --jcanales 11/13/2021 (Registers players to start a new game)
    PROCEDURE INS_PLAYERS_NEW_GAME(P_NAME1 VARCHAR2, P_NAME2 VARCHAR2);
    
    --jcanales 11/13/2021 (defines who is gonna start the game)
    PROCEDURE SELECT_PLAYER_TURN(P_NAME1 VARCHAR2, P_NAME2 VARCHAR2);
    
    --jcanales 11/23/2021 (ends game)
    PROCEDURE END_GAME;
    
    --jcanales 11/23/2021 (start process to move a piece)
    PROCEDURE MOVE_PIECE(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2);

END GAME_PQ01;
/