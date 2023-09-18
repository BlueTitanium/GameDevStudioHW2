/// @description Insert description here
// You can write your code in this editor

draw_set_halign( fa_center);
draw_set_valign( fa_top);
var _num = instance_number(obj_cell)-1;
if(_num>0){
	image_blend = c_white;
	draw_self();
	draw_set_color(#6ee68e);
} else {
	image_blend = c_gray;
	draw_self();
	draw_set_color(c_black);
}
draw_set_font(fnt_raleway24);
draw_set_halign( fa_center);
draw_set_valign( fa_top);
draw_text(x, y+32,key_to_press+": " +text);
draw_text(x, y+32+32, "Compress "+string(_num)+" cells to gain\nattack speed and damage");


