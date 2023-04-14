/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Actualizar peso
if(instance_exists(oBag)){
	global.peso_actual = instance_number(oBag);
}else{
	global.peso_actual = 0;
}


if(!global.pause){
	//Click en tienda
	//button store
	if(device_mouse_x_to_gui(0)> vw-80 && device_mouse_x_to_gui(0)< vw && device_mouse_y_to_gui(0)>0 && device_mouse_y_to_gui(0)<100){
		if(mouse_check_button_pressed(mb_left)) {
			global.show_store = !global.show_store;
		} 
	}

	//button weight
	//draw_rectangle(vw/2+50, vh/2-160, vw/2+150, vh/2-130, false);
	if(device_mouse_x_to_gui(0)> vw/2+50 && device_mouse_x_to_gui(0)< vw/2+150 && device_mouse_y_to_gui(0)>vh/2-160 && device_mouse_y_to_gui(0)<vh/2-130){
		if(mouse_check_button_pressed(mb_left)) {
			if(global.valor >= value_weight){
				global.peso_max++;
				global.valor -= value_weight;
			}
		} 
	}
	//draw_rectangle(vw/2+250, vh/2-160, vw/2+350, vh/2-130, false);
	//boton speed
	if(device_mouse_x_to_gui(0)> vw/2+250 && device_mouse_x_to_gui(0)< vw/2+350 && device_mouse_y_to_gui(0)>vh/2-160 && device_mouse_y_to_gui(0)<vh/2-130){
		if(mouse_check_button_pressed(mb_left)) {
			if(global.valor >= value_speed){
				global.player_spd += 0.5;
				global.valor -= value_speed;
			}
		} 
	}
}


if(global.show_store){
	instance_deactivate_all(true);
}else{
	instance_activate_all();
}

//pause
if(keyboard_check_pressed(vk_escape) ){
	if(room == Room1)global.pause = !global.pause;
}

//Hover button exit
if(device_mouse_x_to_gui(0)> vw/2-100 && device_mouse_x_to_gui(0)< vw/2+100 && device_mouse_y_to_gui(0)>vh/2 && device_mouse_y_to_gui(0)<vh/2+60){
	if(mouse_check_button_pressed(mb_left)) {
		game_end();
	} 
}