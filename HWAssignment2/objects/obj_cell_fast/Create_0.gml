/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

function try_shoot(){
	if(attack_cooldown_remaining<=0 and controller.core!=noone){
		attack_cooldown_remaining = controller.core.attack_cooldown/2;
		_bullet = instance_create_layer(x,y, "Instances", obj_bullet_fast);
		_bullet.image_angle = image_angle;
		if(!audio_is_playing(laserLarge_001))
			audio_play_sound(laserLarge_001,1,false,.2);
	}
}