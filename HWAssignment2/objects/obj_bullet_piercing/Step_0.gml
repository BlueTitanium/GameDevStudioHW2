/// @description Insert description here
// You can write your code in this editor
xprev=x
yprev=y
x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
var _inst = instance_place(x, y, obj_enemy);
if(_inst != noone){
	if(is_colliding=false){
		_inst._health -= damage*2.5;
		is_colliding = true;
		audio_play_sound(impactMetal_001,1,false,.4);
		obj_particle_manager.emit_spark(obj_particle_manager._ptype3,x,y);
	}
} else {
	is_colliding=false;	
}
if(not obj_player_controller.paused){
	spawn_trail();	
}
