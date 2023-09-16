/// @description Insert description here
// You can write your code in this editor

var _num_enemies = instance_number(obj_enemy);
if(_num_enemies == 0 and obj_player_controller.is_dead == false 
	and obj_player_controller.paused == false){
	spawn_enemy();
}
