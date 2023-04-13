//variables
_min_value =360;
_max_value = 720;
timer_spawn = round(random_range(_min_value, _max_value));
timer_satisfaction = timer_spawn;
satisfaction_state = "neutro"; // neutro, angry, happy 
satisfaction_value = round(random_range(3, 10));
state_visible = choose(true, false);

position_trash = choose(x - 32, x + 32);
bag = instance_create_layer(position_trash, y, "Instances", oResources);
image_speed = 0;
image_index = round(random(8));

alarm[0] = timer_spawn;
//alarm[1] = timer_satisfaction;