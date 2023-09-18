/// @description Insert description here
// You can write your code in this editor


if(!obj_player_controller.paused){
	var _bullet = instance_create_layer(x,y, "Instances", obj_bullet_enemy);
	_bullet.image_angle = image_angle;
	alarm[0] = 60;
}
