DECLARE
    V_NAME1 VARCHAR2(50) := '&NAME1';
    V_NAME2 VARCHAR2(50) := '&NAME2';
BEGIN
    CHESS.MAIN.START_GAME_PLAYERS(V_NAME1,V_NAME2);
    DBMS_OUTPUT.PUT_LINE('------------------------------');
    DBMS_OUTPUT.PUT_LINE('Juego debidamente preparadado!');
    DBMS_OUTPUT.PUT_LINE('------------------------------');
    EXCEPTION
        WHEN OTHERS THEN
             DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error, intentelo nuevamente');
END;
/