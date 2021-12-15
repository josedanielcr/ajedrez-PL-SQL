CREATE OR REPLACE PACKAGE PLAYER_PQ01 IS

    --jcanales 11/13/2021 (Creates a new player on the players table)
    PROCEDURE INSERT_NEW_PLAYER(P_NAME VARCHAR2);
    
    --jcanales 11/13/2021 (Deletes an existing player)
    PROCEDURE DELETE_PLAYER(P_ID_PLAYER NUMBER);
    
    --jcanales 11/13/2021 (Checks if a player exist, returns true if yes)
    FUNCTION IS_PLAYER_INSERTED(P_NAME IN VARCHAR2) RETURN BOOLEAN;
    
    --jcanales 11/13/2021 (RAISE PLAYING FLAG FOR A PLAYER)
    PROCEDURE PLAYER_READY_TOPLAY(P_NAME IN VARCHAR2);
    
    --jcanales 11/13/2021 (Sets all players status to NON_PLAYING)
    PROCEDURE ALL_PLAYERS_NOT_PLAYING;
    
     --jcanales 11/23/2021 (Win)
    PROCEDURE ADD_WIN(P_PLAYER_ID NUMBER);
    
    --jcanales 11/23/2021 (loose)
    PROCEDURE ADD_LOOSE(P_PLAYER_ID NUMBER);

END PLAYER_PQ01;
/