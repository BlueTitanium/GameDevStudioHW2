/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
//var _inst = instance_place(x, y, obj_enemy);
//if(_inst != noone){
//	_inst._health -= damage;
//	instance_destroy();
//}
var _inst_b = instance_place(x, y, obj_bullet_enemy);
	if(_inst_b != noone){
		instance_destroy(_inst_b);
		instance_destroy();
	}