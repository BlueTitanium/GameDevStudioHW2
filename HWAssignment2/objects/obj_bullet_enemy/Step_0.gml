/// @description Insert description here
// You can write your code in this editor
if(!obj_player_controller.paused){
	var xprev=x
	var yprev=y
	x += lengthdir_x(_speed,image_angle);
	y += lengthdir_y(_speed,image_angle);
	
	var p_dir = point_direction(x,y,xprev,yprev)

	part_type_orientation(global.pt_e_b, p_dir, p_dir, 0, 0, 0);

	part_particles_create(global.ps_above,x,y,global.pt_e_b,1)
}