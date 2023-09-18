/// @description Insert description here
// You can write your code in this editor
var _closest = instance_nearest(x, y, obj_enemy);
if(_closest!=noone){
	image_angle = point_direction(x, y, _closest.x, _closest.y);
}


// Inherit the parent event
event_inherited();

