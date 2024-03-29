CREATE OR REPLACE PACKAGE MOVES_PQ01 IS
    
    PROCEDURE MOVE_PIECE(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2);

    FUNCTION COL_LETTER_TO_NUM (COL VARCHAR2) RETURN NUMBER;
    FUNCTION COL_NUM_TO_LETTER (COL NUMBER) RETURN VARCHAR2;

    PROCEDURE MOVE_P(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);
    PROCEDURE MOVE_T(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);
    PROCEDURE MOVE_C(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);
    PROCEDURE MOVE_A(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);
    PROCEDURE MOVE_K(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);
    PROCEDURE MOVE_Q(P_CORD_SOURCE VARCHAR2, P_CORD_TARGET VARCHAR2, P_PIECE VARCHAR2, P_STATUS_PIECE VARCHAR2);

END MOVES_PQ01;
/