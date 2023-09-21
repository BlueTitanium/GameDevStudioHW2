/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_raleway24);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(20,20,"Evolution Points: " + string(evo_points));
var _cells = instance_number(obj_cell);
draw_text(20,44,"Cell Count: " + string(_cells) + "/"+string(max_cells));

draw_set_halign(fa_right);
draw_set_color(c_white);

var attack_speed = 1/(attack_cooldown/60);
draw_text(1600-20,20,"Attack Speed: " + string(attack_speed));
draw_text(1600-20,44,"Damage: " + string(damage));

