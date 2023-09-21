/// @description Insert description here
// You can write your code in this editor
if(!obj_player_controller.paused){
	xprev=x
	yprev=y
	x += lengthdir_x(_speed,image_angle);
	y += lengthdir_y(_speed,image_angle);
	
	spawn_trail();
}