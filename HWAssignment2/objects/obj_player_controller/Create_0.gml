/// @description Insert description here
// You can write your code in this editor
x=room_width/2;
y=room_height/2;
is_dead = false;
paused = false;
initial_offset = 0;
next_offset_x = 0;
next_offset_y = 0;

core = instance_create_layer(x,y,"Instances",obj_cell);
core.x_offset = next_offset_x;
core.y_offset = next_offset_y;
core.is_core = true;

x_speed = 5;
y_speed = 5;

evo_points = 0;


//0,0 -> 225; 0,1 -> 270; 0,2 ->315; 1,0 ->180; 1,1 -> previous; 1,2 -> 0; 2,0 -> 135; 2,1 -> 90; 2,2 -> 45;
input_to_angle = [[225,270,315],[180,90,0],[135,90,45]];
//default angle is up
image_angle=90;
shooting = false;

function spawn_next_controller(){
	core.spawn_next(obj_cell);
}