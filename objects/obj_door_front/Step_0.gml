/// @description Insert description here
// You can write your code in this editor
if (image_index > 5){
	global.lastx = objplayer.x;
	global.lasty = objplayer.y;
	global.roomloc2d = rm_two_dimensional_view;
	objplayer.depth = 15;
	room_goto(rm_two_dimensional_view);
	global.realDeath = false;
	instance_destroy(objplayer);
}