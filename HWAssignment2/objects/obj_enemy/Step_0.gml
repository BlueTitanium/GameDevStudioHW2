/// @description Insert description here
// You can write your code in this editor

if(obj_player_controller.is_dead == false and obj_player_controller.paused == false){
	image_angle = point_direction(x,y,obj_player_controller.x,obj_player_controller.y);

	x += lengthdir_x(_speed,image_angle);
	y += lengthdir_y(_speed,image_angle);
}
if(_health <= 0){
	instance_destroy();	
	instance_destroy(_indicator);
}