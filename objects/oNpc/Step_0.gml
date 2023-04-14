//Visible state
if(visible){
	if(bag == noone)bag = instance_create_layer(position_trash, y, "Instances", oResources);
}else{
	instance_destroy(bag);
	bag = noone;
}

//Check the satisfaction
//if(alarm[0] != -1)

//Satisfaction state
if(satisfaction_value >= 8)satisfaction_state = "happy";
if(satisfaction_value > 4 && satisfaction_value<8) satisfaction_state = "neutro";
if(satisfaction_value <= 4) satisfaction_state = "angry";

