/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

function try_shoot(){
	if(attack_cooldown_remaining<=0 and controller.core!=noone){
		attack_cooldown_remaining = controller.core.attack_cooldown;
		_bullet = instance_create_layer(x,y, "Instances", obj_bullet_shield);
		_bullet.image_angle = image_angle;
	}
}