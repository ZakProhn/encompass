/// @description Insert description here
// You can write your code in this editor
global.lastx = objplayer.x;
global.lasty = objplayer.y;
global.roomloc = room1;
room_goto(room1);
global.cooldown = 0;
objplayer.x = 512;
objplayer.y = 162;
audio_pause_sound(snd_rainfall);
audio_play_sound(sound0, 1, true);
global.sound = sound0;