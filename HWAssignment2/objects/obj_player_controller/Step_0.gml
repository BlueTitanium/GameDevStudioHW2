/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[ 0];

camera_set_view_pos( cam, x - camera_get_view_width( cam) / 2, y - camera_get_view_height( cam) / 2);
if(damage_timer>0){
	
	damage_timer -= 1;
	
	screen_shake_params.g_Magnitude = 5;
	fx_set_parameters(screen_shake,screen_shake_params);
} else { 
	screen_shake_params.g_Magnitude = 0;
	fx_set_parameters(screen_shake,screen_shake_params);

}

if(not is_dead){
	if(not paused){
		var _next_speed = [-keyboard_check(ord("A")) + keyboard_check(ord("D")),
							-keyboard_check(ord("W"))+keyboard_check(ord("S"))];
		var _hypotenuse = sqrt(sqr(_next_speed[0])+sqr(_next_speed[1]))
		if(_hypotenuse==0){
			moving=false;	
		}else{
			moving=true;
		}
		_hypotenuse = (_hypotenuse == 0) ? 1 : _hypotenuse;
		//show_debug_message(string(_hypotenuse));
		_next_speed[0]=_next_speed[0]/_hypotenuse;
		_next_speed[1]=_next_speed[1]/_hypotenuse;
		x+=_next_speed[0] * x_speed;
		y+=_next_speed[1] * y_speed;

		//[0->down;1->nothing;2->up,0->left;1->nothing;2->right]
		var _next_angle = [keyboard_check(vk_up)-keyboard_check(vk_down)+1,
							keyboard_check(vk_right)-keyboard_check(vk_left)+1];
		//show_debug_message(string(_next_angle[0]) + " " + string(_next_angle[1]));
		if(!(_next_angle[0] == 1 && _next_angle[1] == 1)){ //if pressing an arrow key
			image_angle = input_to_angle[_next_angle[0]][_next_angle[1]];
			shooting = true;
		} else {
			shooting = false;
		}
		
		if(keyboard_check_pressed(ord("1"))
		and evo_points >= obj_buy_cell_fast.purchase_amt 
		and instance_number(obj_cell)<max_cells){
			spawn_next_controller(obj_cell_fast);
			evo_points-=obj_buy_cell_fast.purchase_amt;
			audio_play_sound(forceField_001,1,false,.2);
		}	
		if(keyboard_check_pressed(ord("2"))
		and evo_points >= obj_buy_cell_piercing.purchase_amt 
		and instance_number(obj_cell)<max_cells){
			spawn_next_controller(obj_cell_piercing);
			evo_points-=obj_buy_cell_piercing.purchase_amt;
			audio_play_sound(forceField_002,1,false,.2);
		}	
		if(keyboard_check_pressed(ord("3"))
		and evo_points >= obj_buy_cell_shield.purchase_amt 
		and instance_number(obj_cell)<max_cells){
			spawn_next_controller(obj_cell_shield);	
			evo_points-=obj_buy_cell_shield.purchase_amt;
			audio_play_sound(forceField_003,1,false,.2);
		}	
		if(keyboard_check_pressed(ord("4"))
		and evo_points >= obj_buy_cell_homing.purchase_amt 
		and instance_number(obj_cell)<max_cells){
			spawn_next_controller(obj_cell_homing);	
			evo_points-=obj_buy_cell_homing.purchase_amt;
			audio_play_sound(forceField_004,1,false,.2);
		}	
		if(keyboard_check_pressed(vk_tab)){
			audio_play_sound(forceField_000,1,false,.5);
			compress();
		}	
	} else {
		
	}
} else {
	if(damage_timer>0 and death_timer == 0){
		audio_sound_gain(Ludum_Dare_38___Track_4,0,1000);
		death_timer = death_length;
	}
	if(death_timer>=0){
		death_timer-=1;	
	} else {
		room_goto(rm_end);
		audio_stop_all();
		audio_play_sound(Ludum_Dare_38___Track_5,1,true);
		audio_sound_gain(Ludum_Dare_38___Track_5,0,0);
		audio_sound_gain(Ludum_Dare_38___Track_5,.1,1000);
	}
}

if(keyboard_check_pressed(vk_escape))
//if(keyboard_check_pressed(ord("E")))
{
	paused = !paused;
}