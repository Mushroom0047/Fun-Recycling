//variables
_min_value =3600;
_max_value = 5400;
timer_spawn = round(random_range(_min_value, _max_value));

satisfaction_state = "neutro"; // neutro, angry, happy 
satisfaction_value = round(random_range(3, 10));
visible = choose(true, false);

position_trash = choose(x - 32, x + 32);
bag = instance_create_layer(position_trash, y, "Instances", oResources);
image_speed = 0;
image_index = round(random(8));

alarm[0] = timer_spawn;


