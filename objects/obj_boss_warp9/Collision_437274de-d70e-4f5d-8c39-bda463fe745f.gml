/// @description Insert description here
// You can write your code in this editor
//global.lastx = objplayer.x;
//global.lasty = objplayer.y;

room_goto(boss3);
global.cooldown = 0;
objplayer.x -= 400;


if(objplayer.x < 70){
	objplayer.x = 70;
}
if(objplayer.x > 470){
	objplayer.x = 470;
}

objplayer.y = 718;
global.roomloc = boss3;