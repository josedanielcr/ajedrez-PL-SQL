CREATE OR REPLACE PROCEDURE PRINT_TABLE IS
        
        A1 VARCHAR2(2);
        A2 VARCHAR2(2);
        A3 VARCHAR2(2);
        A4 VARCHAR2(2);
        A5 VARCHAR2(2);
        A6 VARCHAR2(2);
        A7 VARCHAR2(2);
        A8 VARCHAR2(2);

        B1 VARCHAR2(2);
        B2 VARCHAR2(2);
        B3 VARCHAR2(2);
        B4 VARCHAR2(2);
        B5 VARCHAR2(2);
        B6 VARCHAR2(2);
        B7 VARCHAR2(2);
        B8 VARCHAR2(2);

        C1 VARCHAR2(2);
        C2 VARCHAR2(2);
        C3 VARCHAR2(2);
        C4 VARCHAR2(2);
        C5 VARCHAR2(2);
        C6 VARCHAR2(2);
        C7 VARCHAR2(2);
        C8 VARCHAR2(2);

        D1 VARCHAR2(2);
        D2 VARCHAR2(2);
        D3 VARCHAR2(2);
        D4 VARCHAR2(2);
        D5 VARCHAR2(2);
        D6 VARCHAR2(2);
        D7 VARCHAR2(2);
        D8 VARCHAR2(2);

        E1 VARCHAR2(2);
        E2 VARCHAR2(2);
        E3 VARCHAR2(2);
        E4 VARCHAR2(2);
        E5 VARCHAR2(2);
        E6 VARCHAR2(2);
        E7 VARCHAR2(2);
        E8 VARCHAR2(2);


        F1 VARCHAR2(2);
        F2 VARCHAR2(2);
        F3 VARCHAR2(2);
        F4 VARCHAR2(2);
        F5 VARCHAR2(2);
        F6 VARCHAR2(2);
        F7 VARCHAR2(2);
        F8 VARCHAR2(2);

        G1 VARCHAR2(2);
        G2 VARCHAR2(2);
        G3 VARCHAR2(2);
        G4 VARCHAR2(2);
        G5 VARCHAR2(2);
        G6 VARCHAR2(2);
        G7 VARCHAR2(2);
        G8 VARCHAR2(2);

        H1 VARCHAR2(2);
        H2 VARCHAR2(2);
        H3 VARCHAR2(2);
        H4 VARCHAR2(2);
        H5 VARCHAR2(2);
        H6 VARCHAR2(2);
        H7 VARCHAR2(2);
        H8 VARCHAR2(2);


     BEGIN

        SELECT PIEZA INTO A1 FROM BOARD WHERE COLUMNA='A' AND FILA=1;
        SELECT PIEZA INTO A2 FROM BOARD WHERE COLUMNA='A' AND FILA=2;
        SELECT PIEZA INTO A3 FROM BOARD WHERE COLUMNA='A' AND FILA=3;
        SELECT PIEZA INTO A4 FROM BOARD WHERE COLUMNA='A' AND FILA=4;
        SELECT PIEZA INTO A5 FROM BOARD WHERE COLUMNA='A' AND FILA=5;
        SELECT PIEZA INTO A6 FROM BOARD WHERE COLUMNA='A' AND FILA=6;
        SELECT PIEZA INTO A7 FROM BOARD WHERE COLUMNA='A' AND FILA=7;
        SELECT PIEZA INTO A8 FROM BOARD WHERE COLUMNA='A' AND FILA=8;

        SELECT PIEZA INTO B1 FROM BOARD WHERE COLUMNA='B' AND FILA=1;
        SELECT PIEZA INTO B2 FROM BOARD WHERE COLUMNA='B' AND FILA=2;
        SELECT PIEZA INTO B3 FROM BOARD WHERE COLUMNA='B' AND FILA=3;
        SELECT PIEZA INTO B4 FROM BOARD WHERE COLUMNA='B' AND FILA=4;
        SELECT PIEZA INTO B5 FROM BOARD WHERE COLUMNA='B' AND FILA=5;
        SELECT PIEZA INTO B6 FROM BOARD WHERE COLUMNA='B' AND FILA=6;
        SELECT PIEZA INTO B7 FROM BOARD WHERE COLUMNA='B' AND FILA=7;
        SELECT PIEZA INTO B8 FROM BOARD WHERE COLUMNA='B' AND FILA=8;

        SELECT PIEZA INTO C1 FROM BOARD WHERE COLUMNA='C' AND FILA=1;
        SELECT PIEZA INTO C2 FROM BOARD WHERE COLUMNA='C' AND FILA=2;
        SELECT PIEZA INTO C3 FROM BOARD WHERE COLUMNA='C' AND FILA=3;
        SELECT PIEZA INTO C4 FROM BOARD WHERE COLUMNA='C' AND FILA=4;
        SELECT PIEZA INTO C5 FROM BOARD WHERE COLUMNA='C' AND FILA=5;
        SELECT PIEZA INTO C6 FROM BOARD WHERE COLUMNA='C' AND FILA=6;
        SELECT PIEZA INTO C7 FROM BOARD WHERE COLUMNA='C' AND FILA=7;
        SELECT PIEZA INTO C8 FROM BOARD WHERE COLUMNA='C' AND FILA=8;

        SELECT PIEZA INTO D1 FROM BOARD WHERE COLUMNA='D' AND FILA=1;
        SELECT PIEZA INTO D2 FROM BOARD WHERE COLUMNA='D' AND FILA=2;
        SELECT PIEZA INTO D3 FROM BOARD WHERE COLUMNA='D' AND FILA=3;
        SELECT PIEZA INTO D4 FROM BOARD WHERE COLUMNA='D' AND FILA=4;
        SELECT PIEZA INTO D5 FROM BOARD WHERE COLUMNA='D' AND FILA=5;
        SELECT PIEZA INTO D6 FROM BOARD WHERE COLUMNA='D' AND FILA=6;
        SELECT PIEZA INTO D7 FROM BOARD WHERE COLUMNA='D' AND FILA=7;
        SELECT PIEZA INTO D8 FROM BOARD WHERE COLUMNA='D' AND FILA=8;

        SELECT PIEZA INTO E1 FROM BOARD WHERE COLUMNA='E' AND FILA=1;
        SELECT PIEZA INTO E2 FROM BOARD WHERE COLUMNA='E' AND FILA=2;
        SELECT PIEZA INTO E3 FROM BOARD WHERE COLUMNA='E' AND FILA=3;
        SELECT PIEZA INTO E4 FROM BOARD WHERE COLUMNA='E' AND FILA=4;
        SELECT PIEZA INTO E5 FROM BOARD WHERE COLUMNA='E' AND FILA=5;
        SELECT PIEZA INTO E6 FROM BOARD WHERE COLUMNA='E' AND FILA=6;
        SELECT PIEZA INTO E7 FROM BOARD WHERE COLUMNA='E' AND FILA=7;
        SELECT PIEZA INTO E8 FROM BOARD WHERE COLUMNA='E' AND FILA=8;


        SELECT PIEZA INTO F1 FROM BOARD WHERE COLUMNA='F' AND FILA=1;
        SELECT PIEZA INTO F2 FROM BOARD WHERE COLUMNA='F' AND FILA=2;
        SELECT PIEZA INTO F3 FROM BOARD WHERE COLUMNA='F' AND FILA=3;
        SELECT PIEZA INTO F4 FROM BOARD WHERE COLUMNA='F' AND FILA=4;
        SELECT PIEZA INTO F5 FROM BOARD WHERE COLUMNA='F' AND FILA=5;
        SELECT PIEZA INTO F6 FROM BOARD WHERE COLUMNA='F' AND FILA=6;
        SELECT PIEZA INTO F7 FROM BOARD WHERE COLUMNA='F' AND FILA=7;
        SELECT PIEZA INTO F8 FROM BOARD WHERE COLUMNA='F' AND FILA=8;


        SELECT PIEZA INTO G1 FROM BOARD WHERE COLUMNA='G' AND FILA=1;
        SELECT PIEZA INTO G2 FROM BOARD WHERE COLUMNA='G' AND FILA=2;
        SELECT PIEZA INTO G3 FROM BOARD WHERE COLUMNA='G' AND FILA=3;
        SELECT PIEZA INTO G4 FROM BOARD WHERE COLUMNA='G' AND FILA=4;
        SELECT PIEZA INTO G5 FROM BOARD WHERE COLUMNA='G' AND FILA=5;
        SELECT PIEZA INTO G6 FROM BOARD WHERE COLUMNA='G' AND FILA=6;
        SELECT PIEZA INTO G7 FROM BOARD WHERE COLUMNA='G' AND FILA=7;
        SELECT PIEZA INTO G8 FROM BOARD WHERE COLUMNA='G' AND FILA=8;

        SELECT PIEZA INTO H1 FROM BOARD WHERE COLUMNA='A' AND FILA=1;
        SELECT PIEZA INTO H2 FROM BOARD WHERE COLUMNA='A' AND FILA=2;
        SELECT PIEZA INTO H3 FROM BOARD WHERE COLUMNA='A' AND FILA=3;
        SELECT PIEZA INTO H4 FROM BOARD WHERE COLUMNA='A' AND FILA=4;
        SELECT PIEZA INTO H5 FROM BOARD WHERE COLUMNA='A' AND FILA=5;
        SELECT PIEZA INTO H6 FROM BOARD WHERE COLUMNA='A' AND FILA=6;
        SELECT PIEZA INTO H7 FROM BOARD WHERE COLUMNA='A' AND FILA=7;
        SELECT PIEZA INTO H8 FROM BOARD WHERE COLUMNA='A' AND FILA=8;
        		DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 8  |    '||A8||'    |    '||B8||'    |    '||C8||'    |    '||D8||'    |    '||E8||'    |    '||F8||'    |    '||G8||'    |    '||H8||'    |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 7  |    '||A7||'    |    '||B7||'    |    '||C7||'    |    '||D7||'    |    '||E7||'    |    '||F7||'    |    '||G7||'    |    '||H7||'    |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 6  |     '||A6||'    |       '||B6||'  |         '||C6||'|     '||D6||'    |       '||E6||'  |      '||F6||'   |     '||G6||'    |    '||H6||'     |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 5  |     '||A5||'    |       '||B5||'  |         '||C5||'|     '||D5||'    |       '||E5||'  |      '||F5||'   |     '||G5||'    |    '||H5||'     |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 4  |     '||A4||'    |       '||B4||'  |         '||C4||'|     '||D4||'    |       '||E4||'  |      '||F5||'   |     '||G4||'    |    '||H4||'     |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 3  |     '||A3||'    |       '||B3||'  |         '||C3||'|     '||D3||'    |       '||E3||'  |      '||F3||'   |     '||G3||'    |    '||H3||'     |');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 2  |    '||A2|| '    |    '||B2|| '    |    '||C2|| '    |    '||D2|| '    |    '||E2|| '    |    '||F2|| '    |    '||G2|| '    |    '||H2|| '    |    ');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE('. 1  |    '||A1|| '    |    '||B1|| '    |    '||C1|| '    |    '||D1|| '    |    '||E1|| '    |    '||F1|| '    |    '||G1|| '    |    '||H1|| '    |    ');
			DBMS_OUTPUT.PUT_LINE('.    |         |         |         |         |         |         |         |         |');
			DBMS_OUTPUT.PUT_LINE(rpad('.    -',86,'-'));
			DBMS_OUTPUT.PUT_LINE('.         A         B         C         D         E         F         G         H');

        
    END PRINT_TABLE;