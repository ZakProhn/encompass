/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D"))){
	x+= global.walkSpeed2d;
	image_speed = global.imgsped2d;
	sprite_index = spr_mc_2dwalk_r;
}
if(keyboard_check(ord("A"))){
	x-= global.walkSpeed2d;
	image_speed = global.imgsped2d;
	sprite_index = spr_mc_2dwalk_l;
}

if(keyboard_check(ord("D")) && keyboard_check(ord("A"))){
	image_speed = 0;
	image_index = 0;
}

if(keyboard_check(vk_nokey)){
	image_speed = 0;
	image_index = 0;
}
