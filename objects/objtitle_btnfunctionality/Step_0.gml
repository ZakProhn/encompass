/// @description Insert description here
// You can write your code in this editor
hoverbuttons = 0;
if(keyboard_check(vk_enter)){
	objtitle_start.chkdecrease = 1;
	objtitle_encompass.chkdecrease = 1;
	objtitle_menu.chkincrease = 1;
	instance_create_layer(496, 223.9525,"Instances_5", objtitle_newgame_hoverbox);
	instance_create_layer(496, 352,"Instances_5", objtitle_loadgame_hoverbox);
	instance_create_layer(416, 592,"Instances_5", objtitle_exit_hoverbox);
	instance_create_layer(448, 480,"Instances_5", objtitle_credits_hoverbox);
	hoverbuttons = 1;
}

	
