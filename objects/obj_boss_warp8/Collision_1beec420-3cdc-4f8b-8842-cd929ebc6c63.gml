/// @description Insert description here
// You can write your code in this editor
//global.lastx = objplayer.x;
//global.lasty = objplayer.y;

room_goto(boss4);
global.cooldown = 0;
objplayer.x -= 517;
if(objplayer.x < 63){
	objplayer.x = 63;
}
if(objplayer.x > 530){
	objplayer.x = 530;
}


objplayer.y = 32;
global.roomloc = boss4;