/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_raleway64);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
if(room == rm_start){
	draw_text(room_width/2,room_height/2,"CELLS");
	draw_set_font(fnt_raleway28);
	draw_text(room_width/2,room_height-50,"Press space to start");
	draw_set_font(fnt_raleway24);
	draw_text(room_width/2,room_height-300,
	"Controls:\nWASD - Move\nArrow Keys - Shoot\n1,2,3,4,Tab - Corresponding Purchase");
}
if(room == rm_end){
	draw_text(room_width/2,room_height/2,"You Reached Wave " + string(global.count));
	draw_set_font(fnt_raleway28);
	draw_text(room_width/2,room_height/2+50,"with " + string(global.e_p) + " evolution points remaining...");
	draw_text(room_width/2,room_height-50,"Press space to go to start screen");
}


