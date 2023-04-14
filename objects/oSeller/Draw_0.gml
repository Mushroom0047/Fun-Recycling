/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!instance_exists(oBag) && distance_to_object(oPlayer)<400){
	draw_rectangle_color(x-110, y-45, x+110, y, c_white, c_white, c_white, c_white, 0);
	draw_set_font(FontOswaldlow);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(x, y-40, "¡Gracias por reciclar!")
}
draw_self();