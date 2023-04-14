/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed = 0;
image_index = 0;
image_angle = round(random(360));

var inst_nearest = instance_nearest(x, y, oNpc);
estado_npc = inst_nearest.satisfaction_state;

var _min = 2;
var _max = 15;

if(estado_npc == "neutro"){_min = 2;_max = 15}
if(estado_npc == "angry"){_min = 1;_max = 8}
if(estado_npc == "happy"){_min = 4;_max = 22}

valor = round(random_range(_min, _max));

var sn = choose(SnThankFemale, SnThankMasculine, SnThank3);

if(!audio_is_playing(sn))audio_play_sound(sn, 10, 0);