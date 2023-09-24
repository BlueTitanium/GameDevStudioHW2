/// @description Insert description here
// You can write your code in this editor
x=room_width/2;
y=room_height/2;
is_dead = false;
paused = false;
initial_offset = 0;
next_offset_x = 0;
next_offset_y = 0;
damage = 1;
core = instance_create_layer(x,y,"Instances",obj_cell);
core.x_offset = next_offset_x;
core.y_offset = next_offset_y;
core.is_core = true;

x_speed = 5;
y_speed = 5;

evo_points = 0;

max_cells = 41;
attack_cooldown = 60;

damage_timer = 0;
damage_length = 30;
death_timer = 0;
death_length = 90;

//0,0 -> 225; 0,1 -> 270; 0,2 ->315; 1,0 ->180; 1,1 -> previous; 1,2 -> 0; 2,0 -> 135; 2,1 -> 90; 2,2 -> 45;
input_to_angle = [[225,270,315],[180,90,0],[135,90,45]];
//default angle is up
image_angle=90;
shooting = false;

screen_shake = layer_get_fx("FX_screen_shake");
screen_shake_params = fx_get_parameters(screen_shake);
function spawn_next_controller(_cell_type){
	if(instance_number(obj_cell)<max_cells){
		core.spawn_next(_cell_type);
	}
}

function compress(){
	var _desired_attack_speed = 1/(attack_cooldown/60);
	with(obj_cell){
		if(not is_core){
			instance_destroy();
			//controller.x_speed +=.1;
			//controller.y_speed +=.1;
			controller.damage+=.1;
			_desired_attack_speed=clamp(_desired_attack_speed+0.05,0.1,5);
			
		}
	}
	attack_cooldown = clamp(60/_desired_attack_speed,0.1,1000);
}

function take_damage(){
	damage_timer = damage_length;
}