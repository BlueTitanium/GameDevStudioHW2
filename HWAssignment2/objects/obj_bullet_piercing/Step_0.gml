/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
var _inst = instance_place(x, y, obj_enemy);
if(_inst != noone){
	if(is_colliding=false){
		_inst._health -= damage*2.5;
		is_colliding = true;
	}
} else {
	is_colliding=false;	
}


