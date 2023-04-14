/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(global.debug){
	var yy = 16;
	draw_set_font(Font3);
	draw_set_halign(fa_right);
	draw_set_color(c_black);
	
	draw_text(vw, y + yy * 4, "valor ="+string(global.valor));
	draw_text(vw, y + yy * 6, "peso_actual ="+string(global.peso_actual));
	draw_text(vw, y + yy * 8, "pero_max ="+string(global.peso_max));
	draw_text(vw, y + yy * 10, "move_bags ="+string(global.move_bags));
	draw_text(vw, y + yy * 12, "money ="+string(instance_exists(oMoney)));
}

if(!global.show_store){
	//DRAW THE WEIGHT
	draw_sprite_ext(sprGUIbg, 0, 0, vh, 2.2, 2, 0, c_white, 1);
	draw_sprite_ext(sprCarreta, 0, 60, vh-160, 2, 2, 0, c_white, 1);

	//set font
	draw_set_font(FontOswald);

	//set color with the weight
	if(global.peso_actual <= global.peso_max){
	draw_set_color(c_black);
	}else{
	draw_set_color(c_red);
	}
	//Write the weight
	draw_set_halign(fa_center);
	draw_text(100, vh-100, "Kg: "+string(global.peso_actual));
	
	draw_set_font(FontOswaldlow);
	draw_set_color(c_red);
	draw_text(100, vh-65, "Peso Max. "+string(global.peso_max));
	draw_text(100, vh-35, "Velocidad: "+string(global.player_spd));
}

//DRAW THE MONEY
draw_sprite_ext(sprGUIbg, 0, 0, 70, 2.2, 1, 0, c_white, 1);
draw_sprite_ext(sprMoney, 0, 25, 35, .5, .5, 0, c_white, 1);
draw_set_halign(fa_left);
draw_text(45, 16, "$"+string(global.valor));

//DRAW A STORE ICON
draw_sprite_ext(sprStore, 0, vw, 0, 1.2, 1.2, 0, c_white, 1);


if(global.show_store){
	//DRAW STORE
	draw_sprite_ext(sprGUIbg, 0, vw/2, vh/2-100, 6, 3, 0, c_white, 1);
	draw_set_halign(fa_center);
	draw_set_font(FontOswald);
	draw_set_color(c_black);
	draw_text(vw-390, 30, "Tienda");
	//draw items
	draw_set_font(FontOswaldlow);
	draw_set_color(c_white);
	draw_sprite(sprWeight, 0, vw/2+100, vh/2/2);
	draw_text(vw/2+100, vh/2-190, "$"+string(value_weight));
	
	if(global.valor >= value_weight){
		draw_set_color(c_lime);
	}else{
		draw_set_color(c_red);
	}
	
	draw_text(vw/2+100, vh/2-160, "COMPRAR");
	//draw_rectangle(vw/2+50, vh/2-160, vw/2+150, vh/2-130, false);
	
	draw_sprite(sprSpeed, 0, vw/2+300, vh/2/2);
	draw_set_color(c_white);
	draw_text(vw/2+300, vh/2-190, "$"+string(value_speed));
	if(global.valor >= value_speed){
		draw_set_color(c_lime);
	}else{
		draw_set_color(c_red);
	}
	draw_text(vw/2+300, vh/2-160, "COMPRAR");
	//draw_rectangle(vw/2+250, vh/2-160, vw/2+350, vh/2-130, false);
}


//pause
//pause
if(room == Room1){
	if(global.pause){
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(0, 0, vw, vh, false);
		instance_deactivate_all(true);
		draw_set_alpha(1);
		
		draw_set_font(FontOswaldMenu);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(vw/2, vh/2 - 100, "PAUSE");
		draw_line(vw/2-100, vh/2-50, vw/2+100, vh/2-50);
		draw_text(vw/2, vh/2 , "EXIT");
		//draw_rectangle_color(vw/2-100, vh/2, vw/2+100, vh/2+60, c_red, c_red, c_red, c_red, 1);
	}else{
		draw_set_alpha(1);
		draw_set_color(c_white);
		instance_activate_all();
				
	}
}
