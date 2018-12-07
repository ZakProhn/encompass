/// @description Script that runs all the interactions with the menu buuttons

if(objtitle_menu.chkincrease== 1){
	image_alpha += 0.05;
}
//new game hovered over
if(position_meeting(mouse_x, mouse_y, objtitle_newgame_hoverbox)){
	sprite_index = sprtitle_menu_newgame;
	if(mouse_check_button_pressed(true)){
		audio_stop_all();
		audio_play_sound(sound0, 1, true);
		global.sound = sound0;
		room_goto_next()
	}
}

//load game hovered over
else if(position_meeting(mouse_x, mouse_y, objtitle_loadgame_hoverbox)){
	sprite_index = sprtitle_menu_loadgame;
	if(mouse_check_button_pressed(true)){
		instance_destroy(objtitle_newgame_hoverbox);
		instance_destroy(objtitle_loadgame_hoverbox);
		instance_destroy(objtitle_credits_hoverbox);
		instance_destroy(objtitle_exit_hoverbox);
		objtitle_menu.loadmenu = true;
	}
}


//exit hovered over
else if(position_meeting(mouse_x, mouse_y, objtitle_exit_hoverbox)){
	sprite_index = sprtitle_menu_exit;
	if(mouse_check_button_pressed(true)){
		game_end();
	}
}


//credits hovered over
else if(position_meeting(mouse_x, mouse_y, objtitle_credits_hoverbox)){
	sprite_index = sprtitle_menu_credits;
}

//Has the load game menu open.
else if(objtitle_menu.loadmenu){
	sprite_index = sprtitle_menu_loadstates;
	instance_create_layer(690, 200,"Instances_5", objtitle_game1_hoverbox);
	instance_create_layer(690, 352,"Instances_5", objtitle_game2_hoverbox);
	instance_create_layer(690, 450,"Instances_5", objtitle_game3_hoverbox);
	instance_create_layer(690, 570,"Instances_5", objtitle_cancel_hoverbox);
	
	if(position_meeting(mouse_x, mouse_y, objtitle_game1_hoverbox)){
		sprite_index = sprtitle_menu_load_state1;
		if(mouse_check_button_pressed(true)){
			if(file_exists("Save1.dat")){
			game_load("Save1.dat");
			//file_delete("Save1.dat");
			audio_stop_all();
			//audio_pause_sound(global.sound)
			}else{
				instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
				with(obj_confirmationText){
					failedToLoadText1 = true;
				}
			}
		}
	}
	else if(position_meeting(mouse_x, mouse_y, objtitle_game2_hoverbox)){
		sprite_index = sprtitle_menu_load_state2;
		if(mouse_check_button_pressed(true)){
			if(file_exists("Save2.dat")){
			game_load("Save2.dat");
			//file_delete("Save2.dat");
			audio_stop_all();
			//audio_pause_sound(global.sound)
			}else{
				instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
				with(obj_confirmationText){
					failedToLoadText2 = true;
				}
			}
		}
	}
	else if(position_meeting(mouse_x, mouse_y, objtitle_game3_hoverbox)){
		sprite_index = sprtitle_menu_load_state3;
		if(mouse_check_button_pressed(true)){
			if(file_exists("Save3.dat")){
			game_load("Save3.dat");
			//file_delete("Save3.dat");
			audio_stop_all();
			//audio_pause_sound(global.sound)
			}else{
				instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
				with(obj_confirmationText){
					failedToLoadText3 = true;
				}
			}
		}
	}
	else if(position_meeting(mouse_x, mouse_y, objtitle_cancel_hoverbox)){
		sprite_index = sprtitle_menu_load_cancel;
		if(mouse_check_button_pressed(true)){
			objtitle_menu.loadmenu = false;	
			instance_destroy(objtitle_game1_hoverbox);
			instance_destroy(objtitle_game2_hoverbox);
			instance_destroy(objtitle_game3_hoverbox);
			instance_destroy(objtitle_cancel_hoverbox);
			instance_create_layer(496, 223.9525,"Instances_5", objtitle_newgame_hoverbox);
			instance_create_layer(496, 352,"Instances_5", objtitle_loadgame_hoverbox);
			instance_create_layer(416, 592,"Instances_5", objtitle_exit_hoverbox);
			instance_create_layer(448, 480,"Instances_5", objtitle_credits_hoverbox);
		}
	}
}	

else{
	sprite_index = sprtitle_menu;
}

