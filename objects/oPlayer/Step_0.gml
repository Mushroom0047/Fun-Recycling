//Keys
var right_key = (keyboard_check(ord("D")) || keyboard_check(vk_right));
var left_key = (keyboard_check(ord("A")) || keyboard_check(vk_left));
var up_key = (keyboard_check(ord("W")) || keyboard_check(vk_up));
var down_key = (keyboard_check(ord("S")) || keyboard_check(vk_down));
 
//movement
hspd = (right_key  - left_key) * global.player_spd;
vspd = (down_key - up_key) * global.player_spd;

//Animacion
if(left_key)image_xscale = 1;
if(right_key)image_xscale = -1;

//Horizontal collisions
if place_meeting(x+hspd,y,oSolid) {
        while !place_meeting(x+sign(hspd),y,oSolid) {
                 x += sign(hspd);
        }
        hspd = 0;
}
//Vertical collisions
if place_meeting(x,y+vspd,oSolid) {
        while !place_meeting(x,y+sign(vspd),oSolid) {
                 y += sign(vspd);
        }
        vspd = 0;
}

//movement
x += hspd;
y += vspd;

//Coger bolsas
if(place_meeting(x, y, oResources)){
	if(global.peso_actual <=global.peso_max){
		//var yy = if(global.peso_actual<=8)? 16*global.peso_actual : 
		var yyy = (global.peso_actual*4);
		instance_create_layer(x , y , "Instances_bags", oBag,  {yy: yyy});
	}	
}



