/// @description Insert description here
// You can write your code in this editor

global.lastx = objplayer.x;
global.lasty = objplayer.y;

if(global.cooldown < 1){
	if(keyboard_check(ord("D"))){
		x+= global.walkSpeed;
		image_speed = global.imgsped;
		sprite_index = spr_mc_walk_r;
		global.plr_direction = 4;
	}
	if(keyboard_check(ord("A"))){
		x-= global.walkSpeed;
		image_speed = global.imgsped;
		sprite_index = spr_mc_walk_l;
		global.plr_direction = 1;
	}
	if(keyboard_check(ord("S"))){
		y+= global.walkSpeed;
		image_speed = global.imgsped;
		sprite_index = spr_mc_walk_d;
		global.plr_direction = 0;
	}
	if(keyboard_check(ord("W"))){
		y-= global.walkSpeed;
		image_speed = global.imgsped;
		sprite_index = spr_mc_walk_u;
		global.plr_direction = 2;
	}
}

if(keyboard_check(vk_space) && global.cooldown < 1){
	switch(global.plr_direction){
		case 0:
			sw = instance_create_depth(x-16,y+20,depth-1,objsword);
			sw.image_angle = 270;
			break;
		case 1:
			sw = instance_create_depth(x-5,y+12,depth,objsword);
			sw.image_angle = 180;
			break;
		case 2:
			sw = instance_create_depth(x+12,y+16,depth,objsword);
			sw.image_angle = 90;
			break;
		default:
			sw = instance_create_depth(x-8,y+24,image_angle,objsword);
			break;
	}
	global.cooldown = 17;
	
	/*if(sprite_index == spr_mc_walk_r){
		instance_create_depth(x+80,y-40,objplayer.depth,objsword)
		global.cooldown = 15;
	}
	if(sprite_index == spr_mc_walk_l){
		instance_create_depth(x-80,y-40,objplayer.depth,objsword)
		global.cooldown = 15;
	}
	if(sprite_index == spr_mc_walk_u){
	    instance_create_depth(x,y-100,objplayer.depth,objsword)
		global.cooldown = 15;
	}
	if(sprite_index == spr_mc_walk_d){
		instance_create_depth(x,y+100,objplayer.depth,objsword)
		global.cooldown = 15;
	}*/
}
global.cooldown--;

if(keyboard_check(vk_nokey)){
	image_speed = 0;
	image_index = 0;
	global.walkSpeed = 3.5;
}

if(keyboard_check(vk_shift)){
	global.walkSpeed = 10;
	global.imgsped = 3.5 / 2.5;
}

if(keyboard_check_released(vk_shift)){
	global.walkSpeed = 3.5;
	global.imgsped = 3.5 / 3;
}

//decrements cooldown and inv_frames counters
if(global.cooldown != 0)
{
	global.cooldown--;
}
if(inv_frames != 0)
{
	inv_frames--;
}

//player dies if curr_health is 0 or less
//player dies if curr_health is 0 or less
if(curr_health <= 0)
{
	curr_health = 10;
	game_save("continue.dat");
	instance_destroy();
	
}


