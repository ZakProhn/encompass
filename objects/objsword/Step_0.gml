/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right){
	x = x + objplayer.image_xscale * 0.5;

}
if keyboard_check(vk_left){
	x = x - objplayer.image_xscale * 0.5;
}
if keyboard_check(vk_down){
	y = y + objplayer.image_yscale * 0.5;
}
if keyboard_check(vk_up){
	y = y - objplayer.image_yscale * 0.5;
}

image_angle -= 9;
frames--;
if(frames <= 0){
	instance_destroy();
}
