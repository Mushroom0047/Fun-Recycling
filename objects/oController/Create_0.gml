//Variables
global.valor = 0;
global.peso_actual = 0;
global.peso_max = 6;

global.player_spd = 5;
global.pause = false;

global.debug = false;

vw = view_wport[0];
vh = view_hport[0];


global.show_store = false;

value_weight = 300;
value_speed = 800;

if(!audio_is_playing(SnCity_03))audio_play_sound(SnCity_03, 10, 0);