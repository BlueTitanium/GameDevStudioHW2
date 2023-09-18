/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_raleway24);
draw_set_halign(fa_center);
draw_set_color(c_white);
if(room == rm_start){
	draw_text(room_width/2,room_height/2,"CELLS");
	draw_text(room_width/2,room_height-32,"Press space to start");
}
if(room == rm_end){
	draw_text(room_width/2,room_height/2,"You lose.");
	draw_text(room_width/2,room_height-32,"Press space to go to start screen");
}


