/// @description Insert description here
// You can write your code in this editor
if (image_index > 6){
	global.lastx = objplayer.x;
	global.lasty = objplayer.y;
	global.roomloc = room2;
	objplayer.depth = 15;
	room_goto(room2);
	global.cooldown = 0;
	objplayer.x = 414;
	objplayer.y = 4909;
	audio_pause_sound(sound0);
	audio_play_sound(snd_rainfall, 1, true);
	global.sound = snd_rainfall;	
}