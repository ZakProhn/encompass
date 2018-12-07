/// @description Insert description here
// You can write your code in this ed
//global.lastx = objplayer.x;
//global.lasty = objplayer.y;

room_goto(boss3);
global.cooldown = 0;

objplayer.x += 517;

if(objplayer.x < 580){
	objplayer.x = 580;
}
if (objplayer.x > 965){
	objplayer.x = 965;
}

objplayer.y = 716;
global.roomloc = boss3;