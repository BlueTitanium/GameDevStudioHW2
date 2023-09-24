/// @description Insert description here
// You can write your code in this editor

controller.take_damage();

if(!is_core and !audio_is_playing(explosionCrunch_000)){
	audio_play_sound(explosionCrunch_000,1,false,.5);
}

obj_particle_manager.emit_explosion(obj_particle_manager._ptype2,x,y);