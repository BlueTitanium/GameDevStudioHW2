/// @description Insert description here
// You can write your code in this editor
xprev=x;
yprev=y;
x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
//var _inst = instance_place(x, y, obj_enemy);
//if(_inst != noone){
//	_inst._health -= damage;
//	instance_destroy();
//}
var _inst_b = instance_place(x, y, obj_bullet_enemy);
	if(_inst_b != noone){
		instance_destroy(_inst_b);
		audio_play_sound(impactMetal_004,1,false,.4);
		obj_particle_manager.emit_spark(obj_particle_manager._ptype4,x,y);
	}
	
if(not obj_player_controller.paused){
	spawn_trail();	
}