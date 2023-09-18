/// @description Insert description here
// You can write your code in this editor

if(obj_player_controller.is_dead){
	instance_destroy();
}else{



// Inherit the parent event
event_inherited();

	x = controller.core.x + x_offset;
	y = controller.core.y + y_offset;
	
var _closest = instance_nearest(x, y, obj_enemy);
if(_closest!=noone){
	image_angle = point_direction(x, y, _closest.x, _closest.y);
}
}