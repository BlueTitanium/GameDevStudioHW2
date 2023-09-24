/// @description Insert description here
// You can write your code in this editor

var _text_angle=10;
var _initial_start_h = 40;
draw_set_font(fnt_raleway28);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(20,_initial_start_h,"Evolution Points: " + string(evo_points),1,1,-_text_angle);
var _cells = instance_number(obj_cell);
draw_text_transformed(20,_initial_start_h+4+28,"Cell Count: " + string(_cells) + "/"+string(max_cells),1,1,-_text_angle);

draw_set_halign(fa_right);
draw_set_color(c_white);

var attack_speed = 1/(attack_cooldown/60);
draw_text_transformed(1600-20,_initial_start_h,"Attack Speed: " + string(attack_speed),1,1,_text_angle);
draw_text_transformed(1600-20,_initial_start_h+4+28,"Damage: " + string(damage),1,1,_text_angle);

