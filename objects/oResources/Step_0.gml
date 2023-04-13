/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var capacity = (oPlayer.cu_bag <= oPlayer.max_bags)? true: false;

if(place_meeting(x, y, oPlayer) && capacity){
	instance_create_layer(x, y, "Instances", oSplash);
	instance_destroy();
}