CREATE OR REPLACE PACKAGE BOARD_PQ01 IS

    --jcanales 11/14/2021 (Fills the board with all the pieces)
    PROCEDURE INIT_BOARD;
    
    --jcanales 11/14/2021 (cleans board)
    PROCEDURE CLEAN_BOARD;

END BOARD_PQ01;
/