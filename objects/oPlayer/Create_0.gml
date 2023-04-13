//Variables
spd = 5;
hspd = 0;
vspd = 0;

max_bags =8;
cu_bag = 5;

repeat(cu_bag){
	instance_create_layer(x , y , "Instances_bags", oBag,  {yy: (6*cu_bag)});
}