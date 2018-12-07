/// @description Handles the interactions the user can have in the main menu
//click on save game
if(position_meeting(mouse_x, mouse_y, obj_hoverbox_save)){
	sprite_index = spr_ingamemenu_savegame;
	if(mouse_check_button_pressed(true)){
		instance_destroy(obj_hoverbox_exit);
		instance_destroy(obj_hoverbox_save);
		instance_destroy(obj_hoverbox_tomainmenu);
		instance_destroy(obj_hoverbox_return);
		instance_destroy(obj_options_hoverbox);
		obj_menu2d.savemenu = true;
	}
}


//click on exit game EXITS THE GAME
else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_exit)){
	sprite_index = spr_ingamemenu_exitgame;
	if(mouse_check_button_pressed(true)){
		game_end();	
	}
}
// return to previous room you were in before going to the menu
else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_return)){
	sprite_index = spr_ingamemenu_returntogame
	if(mouse_check_button_pressed(true)){
		objplayer2d.x = global.lastx;
		//objplayer2d.y = global.lasty;
		objplayer2d.visible = true;
		audio_resume_sound(global.sound);
		room_goto(global.roomloc2d);
	}
}
//return to the main menu
else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_tomainmenu)){
	sprite_index = spr_ingamemenu_returntomain;
	if(mouse_check_button_pressed(true)){
		game_restart();
		//global.realDeath = true;
		room_goto(title_screen);
	}
}
//opens Options menu NOT YET IMPLEMENTED
else if(position_meeting(mouse_x, mouse_y, obj_options_hoverbox)){
	sprite_index = spr_ingamemenu_options;
	if(mouse_check_button_pressed(true)){
		instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
		with(obj_confirmationText){
			notImplementedText = true;
		}
	}
}
//deals with saving to multiple states
else if(obj_menu2d.savemenu){
	sprite_index = spr_ingamemenu_savestates;
	instance_create_layer(495, 390, "Instances_2", obj_hoverbox_slot1);
	instance_create_layer(495, 470, "Instances_2", obj_hoverbox_slot2);
	instance_create_layer(495, 550, "Instances_2", obj_hoverbox_slot3);
	instance_create_layer(495, 630, "Instances_2", obj_hoverbox_cancel);
	if(position_meeting(mouse_x, mouse_y, obj_hoverbox_slot1)){
		sprite_index = spr_ingamemenu_save_slot1;
		if(mouse_check_button_pressed(true)){
			room_restart();
			game_save("Save1.dat");
			instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
			with(obj_confirmationText){
				gameSavedText1 = true;
			}
			obj_menu2d.savemenu = false;
			instance_destroy(obj_hoverbox_slot1);
			instance_destroy(obj_hoverbox_slot2);
			instance_destroy(obj_hoverbox_slot3);
			instance_destroy(obj_hoverbox_cancel);
			instance_create_layer(32, 224, "Instances_2", obj_hoverbox_return);
			instance_create_layer(32, 320, "Instances_2", obj_hoverbox_tomainmenu);
			instance_create_layer(32, 416, "Instances_2", obj_hoverbox_save);
			instance_create_layer(32, 496, "Instances_2", obj_options_hoverbox);
			instance_create_layer(32, 576, "Instances_2", obj_hoverbox_exit);
		}
	}
	else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_slot2)){
		sprite_index = spr_ingamemenu_save_slot2;
		if(mouse_check_button_pressed(true)){
			room_restart();
			game_save("Save2.dat");
			///file_delete("Save2.dat")
			instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
			with(obj_confirmationText){
				gameSavedText2 = true;
			}
			obj_menu2d.savemenu = false;
			instance_destroy(obj_hoverbox_slot1);
			instance_destroy(obj_hoverbox_slot2);
			instance_destroy(obj_hoverbox_slot3);
			instance_destroy(obj_hoverbox_cancel);
			instance_create_layer(32, 224, "Instances_2", obj_hoverbox_return);
			instance_create_layer(32, 320, "Instances_2", obj_hoverbox_tomainmenu);
			instance_create_layer(32, 416, "Instances_2", obj_hoverbox_save);
			instance_create_layer(32, 496, "Instances_2", obj_options_hoverbox);
			instance_create_layer(32, 576, "Instances_2", obj_hoverbox_exit);
		}
	}
	else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_slot3)){
		sprite_index = spr_ingamemenu_save_slot3;
		if(mouse_check_button_pressed(true)){
			room_restart();
			game_save("Save3.dat");
			//file_delete("Save3.dat")
			instance_create_layer(64, 64, "onScreenText", obj_confirmationText)
			with(obj_confirmationText){
				gameSavedText3 = true;
			}
			obj_menu2d.savemenu = false;
			instance_destroy(obj_hoverbox_slot1);
			instance_destroy(obj_hoverbox_slot2);
			instance_destroy(obj_hoverbox_slot3);
			instance_destroy(obj_hoverbox_cancel);
			instance_create_layer(32, 224, "Instances_2", obj_hoverbox_return);
			instance_create_layer(32, 320, "Instances_2", obj_hoverbox_tomainmenu);
			instance_create_layer(32, 416, "Instances_2", obj_hoverbox_save);
			instance_create_layer(32, 496, "Instances_2", obj_options_hoverbox);
			instance_create_layer(32, 576, "Instances_2", obj_hoverbox_exit);
		}
	}
	else if(position_meeting(mouse_x, mouse_y, obj_hoverbox_cancel)){
		sprite_index = spr_ingamemenu_save_cancel;
		if(mouse_check_button_pressed(true)){
			obj_menu2d.savemenu = false;
			instance_destroy(obj_hoverbox_slot1);
			instance_destroy(obj_hoverbox_slot2);
			instance_destroy(obj_hoverbox_slot3);
			instance_destroy(obj_hoverbox_cancel);
			instance_create_layer(32, 224, "Instances_2", obj_hoverbox_return);
			instance_create_layer(32, 320, "Instances_2", obj_hoverbox_tomainmenu);
			instance_create_layer(32, 416, "Instances_2", obj_hoverbox_save);
			instance_create_layer(32, 496, "Instances_2", obj_options_hoverbox);
			instance_create_layer(32, 576, "Instances_2", obj_hoverbox_exit);
		}
	}
}
else sprite_index = spr_ingamemenu_menu;