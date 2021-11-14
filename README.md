#Instrucciones de ejecución
---------------------------------
#1 crear esquema (ejecutar los comandos de la carpeta de chess(squema))
#2 ejecutar tablas(#1 .tab, .grt, .syn)
#3 dentro de scripts ejecutar insertar_flags.sql
#4 ejecutar paquetes(primero .pks, .pkb) en el siguiente orden
    1. PLAYER_PQ01
    2. GAME_FLAGS_PQ01
    3. GAME_PQ01
    4. MAIN_PQ01
#5 ejecutar scripts/nuevo_juego_jugadores.sql, esto para verificar funcionalidades