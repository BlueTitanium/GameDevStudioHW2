/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
var _inst = instance_place(x, y, obj_cell);
if(_inst != noone){
	instance_destroy(_inst);
	//obj_player_controller.evo_points += _inst._points;
	instance_destroy();
}