/// @description Insert description here
// You can write your code in this editor

if(controller.core ==noone){
	instance_destroy();
}else{

//// Inherit the parent event
	event_inherited();

/// @description Insert description here
// You can write your code in this editor
//if(instance_exists(controller.core)){
	x = controller.core.x + x_offset;
	y = controller.core.y + y_offset;
//}
}