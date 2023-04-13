/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(satisfaction_state == "angry")draw_sprite_ext(sprAngry_64, 0, x, y -24, .8, .8, 0, c_red, 1);
if(satisfaction_state == "neutro")draw_sprite_ext(sprNeutral_64, 0, x, y -24, .8, .8, 0, c_white, 1);
if(satisfaction_state == "happy")draw_sprite_ext(sprFeliz_64, 0, x, y -24, .8, .8, 0, c_white, 1);

var sep = 32;
//draw_text(x, y+sep, "timer_spawn ="+string(timer_spawn));
//draw_text(x, y+sep*2, "timer_satisfaction ="+string(timer_satisfaction));
//draw_text(x, y+sep*3, "satisfaction_value ="+string(satisfaction_value));
//draw_text(x, y+sep*4, "alarm0 ="+string(alarm[0]));
//draw_text(x, y+sep*5, "alarm1 ="+string(alarm[1]));

draw_self();