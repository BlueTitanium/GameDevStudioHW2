/// @description Insert description here
// You can write your code in this editor

_speed = 4;

_health = obj_enemy_spawner.count;

_points = 10;

_indicator = instance_create_layer(x,y,"Instances",obj_enemy_indicator);
_indicator.enemy = id;