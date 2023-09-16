/// @description Insert description here
// You can write your code in this editor

controller = instance_find(obj_player_controller,0);
attack_cooldown = 60;
attack_cooldown_remaining = 0;

function spawn_next(_cell_type){
	var _next_spawn = find_next_available_spawn(-32,0,0,1);
	_new_cell = instance_create_layer(x,y, "Instances", _cell_type);
	_new_cell.x_offset = _next_spawn[0];
	_new_cell.y_offset = _next_spawn[1];
}

function try_shoot(){
	if(attack_cooldown_remaining<=0){
		attack_cooldown_remaining = attack_cooldown;
		_bullet = instance_create_layer(x,y, "Instances", obj_bullet);
		_bullet.image_angle = image_angle;
	}
}

//dir: 0 -> up right; 1 ->down right; 2-> down left; 3-> up left
function find_next_available_spawn(_cur_offset_x,_cur_offset_y,_dir, _ring){
	if(!(position_meeting(x+_cur_offset_x,y+_cur_offset_y,obj_cell))){
		show_debug_message("Hi" + string(_cur_offset_x));
		return [_cur_offset_x,_cur_offset_y];
	} else {
		var _next;
		var _next_dir;
		var _next_ring;
		switch(_dir){
			
			case 0:
				_next = [_cur_offset_x+32,_cur_offset_y-32];
				_next_dir = _dir;
				if(_next[1] <= -32*_ring){
					_next_dir = 1;
				}
				return find_next_available_spawn(_next[0],_next[1],_next_dir,_ring);
				//break;
			case 1:
				_next = [_cur_offset_x+32,_cur_offset_y+32];
				_next_dir = _dir;
				if(_next[0] >= 32*_ring){
					_next_dir = 2;
				}
				return find_next_available_spawn(_next[0],_next[1],_next_dir,_ring);
				//break;
			case 2:
				_next = [_cur_offset_x-32,_cur_offset_y+32];
				_next_dir = _dir;
				if(_next[1] >= 32*_ring){
					_next_dir = 3;
				}
				return find_next_available_spawn(_next[0],_next[1],_next_dir,_ring);
				//break;
			case 3:
				_next = [_cur_offset_x-32,_cur_offset_y-32];
				_next_dir = _dir;
				_next_ring = _ring;
				if(_next[0] <= -32*_ring){
					_next_dir = 0;
					_next_ring = _ring+1;
					_next[0] -= 32;
				}
				return find_next_available_spawn(_next[0],_next[1],_next_dir,_next_ring);
				//break;
			default:
				break;
		}
	}
}