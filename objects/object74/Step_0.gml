/// @description Insert description here
// You can write your code in this editor
if(global.down > 2){
	image_alpha += 0.05;
}


if(image_alpha > 0.5){
	image_speed = 1;
}


if (image_index > 32){
	room_goto(rm_1);
}
