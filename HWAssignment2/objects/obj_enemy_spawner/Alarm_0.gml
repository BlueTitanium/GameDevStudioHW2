/// @description Insert description here
// You can write your code in this editor

//spawn something
if(not obj_player_controller.is_dead){
	spawn_enemy();
	spawn_delay -= spawn_delay_decrease;
	alarm[0] = spawn_delay;
}