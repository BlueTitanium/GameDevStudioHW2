/// @description Insert description here
// You can write your code in this editor

if(controller.is_dead == false and controller.paused == false){
	image_angle =controller.image_angle;
	x = controller.x + x_offset;
	y = controller.y + y_offset;

	if(controller.shooting == true){
		try_shoot();	
	}

	if(attack_cooldown_remaining>0){
		attack_cooldown_remaining-=1;
	}

	var _inst = instance_place(x, y, obj_enemy);
	if(_inst != noone){
		_inst._health -= 10;
		controller.evo_points += _inst._points;
		if(is_core){
			//lose event
			controller.is_dead = true;
			instance_destroy();
		} else {
			instance_destroy();
		}
	}
}