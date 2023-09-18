/// @description Insert description here
// You can write your code in this editor

x=enemy.x;
y=enemy.y;
var _next_x = clamp(x, obj_player_controller.x-1600/2+32, obj_player_controller.x+1600/2-32);
var _next_y = clamp(y, obj_player_controller.y-900/2+32, obj_player_controller.y+900/2-32);
image_angle = point_direction(obj_player_controller.x, obj_player_controller.y, enemy.x,enemy.y);
show_indicator = !(point_distance(x,y,_next_x,_next_y) < 32);
x=_next_x;
y=_next_y;