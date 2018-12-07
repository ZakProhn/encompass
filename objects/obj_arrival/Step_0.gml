/// @description Insert description here
// You can write your code in this editor
if(global.down < 1){
	global.down += 0.03;
}
if(global.down > 2 && image_alpha > 0){
	image_alpha -= 0.05;
}
if(image_alpha < 1 && global.down > 1 && global.down < 2){
	image_alpha += 0.05;
}
if(image_alpha == 1){
	global.down += 0.03;
}

