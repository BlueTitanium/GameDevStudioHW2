/// @description Insert description here
// You can write your code in this editor

spawn_delay_decrease = 0.1;
spawn_delay = 180;
count = 1;
amt_to_spawn = 1;
instance_create_layer(random_range(0, room_width), -32,"Instances",obj_enemy);
//alarm[0] = spawn_delay;

function spawn_enemy(){
	var _random_side = 0;
	for(var i = 0; i<amt_to_spawn;i++){
		_random_side = floor(random_range(0,4));
		switch(_random_side){
			case 0:
				instance_create_layer(random_range(0, room_width), 
							obj_player_controller.y -room_height/2 - 32,
							"Instances",obj_enemy);
				break;
			case 1:
				instance_create_layer(obj_player_controller.x -room_width/2 - 32, 
							random_range(0, room_height),
							"Instances",obj_enemy);
				break;
			case 2:
				instance_create_layer(random_range(0, room_width), 
							obj_player_controller.y + room_height/2 + 32,
							"Instances",obj_enemy);
				break;
			case 3:
				instance_create_layer(obj_player_controller.x +room_width/2 + 32, 
							random_range(0, room_height),
							"Instances",obj_enemy);
				break;
			default:
				break;
		}
	}
	count+=1;
	if(count%2 == 0){
		amt_to_spawn +=1;
	}
}