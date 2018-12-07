/// @description Insert description here
// You can write your code in this editor
global.lastx = objplayer.x;
global.lasty = objplayer.y;
global.roomloc = room2;
room_goto(room2);
global.cooldown = 0;
objplayer.x = 399;
objplayer.y = 2541;
audio_sound_pitch(snd_rainfall, 1);
