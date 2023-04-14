/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//Hover button exit
if(device_mouse_x_to_gui(0)> view_wport[0]/2-100 && device_mouse_x_to_gui(0)< view_wport[0]/2+100 && device_mouse_y_to_gui(0)>view_hport[0]/2 && device_mouse_y_to_gui(0)<view_hport[0]/2+60){
	if(mouse_check_button_pressed(mb_left)) {
		game_end();
	} 
}

if(device_mouse_x_to_gui(0)> view_wport[0]/2-100 && device_mouse_x_to_gui(0)< view_wport[0]/2+100 && device_mouse_y_to_gui(0)>view_hport[0]/2-100 && device_mouse_y_to_gui(0)<view_hport[0]/2+40){
	if(mouse_check_button_pressed(mb_left)) {
		room_goto_next();
	} 
}