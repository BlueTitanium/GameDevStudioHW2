/// @description Insert description here
// You can write your code in this editor
damage = obj_player_controller.damage;
_speed = 8;
alarm[0] = 60;
xprev=x
yprev=y
function spawn_trail(){
	var _p_dir = point_direction(x,y,xprev,yprev);

	part_type_orientation(global.pt_e_b, _p_dir, _p_dir, 0, 0, 0);

	part_particles_create(global.ps_above,x,y,global.pt_e_b,1);	
}