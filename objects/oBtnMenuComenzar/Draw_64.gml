/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var vw = view_wport[0];
var vh = view_hport[0];

draw_set_font(FontOswaldMenu);
draw_set_color(c_white);
draw_set_halign(fa_center);
//draw_rectangle_color(vw/2-100, vh/2-100, vw/2+100, vh/2-40, c_red, c_red, c_red, c_red, 1);
draw_text(vw/2, vh/2 - 100, "COMENZAR");


//draw_rectangle_color(vw/2-100, vh/2, vw/2+100, vh/2+60, c_red, c_red, c_red, c_red, 1);
draw_text(vw/2, vh/2, "SALIR");
