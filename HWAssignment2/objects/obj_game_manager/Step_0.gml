/// @description Insert description here
// You can write your code in this editor

//note we are using check PRESSED - which is true for one frame when the key goes down, rather than as long as it is down.
if (keyboard_check_pressed(vk_space)){
	
	if (room == rm_start){
		room_goto(rm_game);	
		audio_stop_all();	
		audio_play_sound(Ludum_Dare_38___Track_4,1,true);
		audio_sound_gain(Ludum_Dare_38___Track_4,0,0);
		audio_sound_gain(Ludum_Dare_38___Track_4,.1,1000);
	} else if (room == rm_end){
		room_goto(rm_start);
		//global.p_score = 0;
	}
	//room_goto_next();
}








