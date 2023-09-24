/// @description Insert description here
// You can write your code in this editor
if(obj_player_controller.is_dead){
	instance_destroy();
}else{

x = controller.x + x_offset;
y = controller.y + y_offset;
attack_cooldown = controller.attack_cooldown;
if(controller.is_dead == false and controller.paused == false){
	
	
	image_angle =controller.image_angle;
	//x = controller.x + x_offset;
	//y = controller.y + y_offset;

	if(controller.shooting == true){
		try_shoot();	
	}

	if(attack_cooldown_remaining>0){
		attack_cooldown_remaining=clamp(attack_cooldown_remaining-1,0,10000);
		
	}

	var _inst = instance_place(x, y, obj_enemy);
	if(_inst != noone){
		_inst._health -= 10;
		controller.evo_points += _inst._points;
		if(is_core){
			controller.take_damage();
			//lose event
			controller.is_dead = true;
			controller.core=noone;
			audio_play_sound(explosionCrunch_001,1,false,.5);
			with(obj_cell){
				instance_destroy();
			}
		} else {
			instance_destroy();
			
		}
	}
	var _inst_b = instance_place(x, y, obj_bullet_enemy);
	if(_inst_b != noone){
		instance_destroy(_inst_b);
		if(is_core){
			//lose event
			controller.is_dead = true;
			controller.core=noone;
			audio_play_sound(explosionCrunch_001,1,false,.5);
			with(obj_cell){
				instance_destroy();
			}
		} else {
			instance_destroy();
		}
	}
	
}
}