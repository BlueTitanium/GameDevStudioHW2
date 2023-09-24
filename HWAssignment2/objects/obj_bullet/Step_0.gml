/// @description Insert description here
// You can write your code in this editor
xprev=x
yprev=y
x += lengthdir_x(_speed,image_angle);
y += lengthdir_y(_speed,image_angle);
var _inst = instance_place(x, y, obj_enemy);
if(_inst != noone){
	_inst._health -= damage;
	//obj_player_controller.evo_points += _inst._points;
	instance_destroy();
	audio_play_sound(impactMetal_000,1,false,.4);
	obj_particle_manager.emit_spark(obj_particle_manager._ptype3,x,y);
}
if(not obj_player_controller.paused){
	spawn_trail();	
}