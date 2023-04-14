/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var capacity = (global.peso_actual <= global.peso_max)? true: false;

if(place_meeting(x, y, oPlayer) && capacity){
	instance_create_layer(x, y, "Instances", oSplash);
	if(!audio_is_playing(SnOpenbag))audio_play_sound(SnOpenbag, 10, 0);
	instance_destroy();
}