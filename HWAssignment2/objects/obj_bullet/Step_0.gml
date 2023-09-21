/// @description Insert description here
// You can write your code in this editor
xprev=x
yprev=y
x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
var _inst = instance_place(x, y, obj_enemy);
if(_inst != noone){
	_inst._health -= damage;
	//obj_player_controller.evo_points += _inst._points;
	instance_destroy();
}
if(not obj_player_controller.paused){
	spawn_trail();	
}