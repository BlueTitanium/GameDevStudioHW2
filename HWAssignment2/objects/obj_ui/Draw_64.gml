/// @description Insert description here
// You can write your code in this editor


if(not obj_player_controller.is_dead){
	draw_set_alpha((obj_player_controller.damage_timer
	/obj_player_controller.damage_length)/4);
	draw_set_color(#A03800);
	draw_rectangle(0,0,room_width,room_height,false);
}else {
	draw_set_alpha(1-(obj_player_controller.death_timer
	/(obj_player_controller.death_length)));
	draw_set_color(#A03800);
	draw_rectangle(0,0,room_width,room_height,false);
}
draw_set_alpha(1);

