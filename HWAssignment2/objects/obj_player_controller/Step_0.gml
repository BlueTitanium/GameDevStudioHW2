/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[ 0];

camera_set_view_pos( cam, x - camera_get_view_width( cam) / 2, y - camera_get_view_height( cam) / 2);

if(not is_dead){
	if(not paused){
		var _next_speed = [-keyboard_check(ord("A")) + keyboard_check(ord("D")),
							-keyboard_check(ord("W"))+keyboard_check(ord("S"))];
		var _hypotenuse = sqrt(sqr(_next_speed[0])+sqr(_next_speed[1]))

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

		if(keyboard_check_pressed(vk_space)){
			spawn_next_controller();	
		}
	}
}
if(keyboard_check_pressed(ord("E"))){
	paused = !paused;	
}