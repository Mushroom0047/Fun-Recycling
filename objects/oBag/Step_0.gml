
//destruir si colisionamos y sumar puntos
if(place_meeting(x, y, oContainer)){
	global.valor += valor;
	instance_create_layer(x, y, "Instances", oMoney);
	instance_destroy();
}

if(distance_to_object(oContainer) < 150){
	var inst = instance_nearest(x, y, oContainer);
	direction = point_direction(x, y, inst.x, inst.y);
	speed = 8;
}else{
	x = oPlayer.x + (16 * oPlayer.image_xscale);
	y = oPlayer.y - yy;
}