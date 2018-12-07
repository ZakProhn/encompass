/// @description Insert description here
// You can write your code in this editor
//global.lastx = objplayer.x;
//global.lasty = objplayer.y;

room_goto(boss2);
global.cooldown = 0;
objplayer.x += 400;


if(objplayer.x > 478){
	objplayer.x = 478;
}
if(objplayer.x < 943){
	objplayer.x = 943;
}

objplayer.y = 45;
global.roomloc = boss2;