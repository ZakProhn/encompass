/// @description Monitors the menu buttons for death_ui

//Handles the continue button in the mouse UI
if(position_meeting(mouse_x, mouse_y, death_ui_continue_hoverbox)){
	sprite_index = menu_buttons_continue_spr;
	if(mouse_check_button_pressed(true)){
		game_load("continue.dat");
	}
}else if(position_meeting(mouse_x, mouse_y, death_ui_return_hoverbox)){
	sprite_index = menu_buttons_return_spr;
	if(mouse_check_button_pressed(true)){
			//room_goto(title_screen);
			game_restart();
	}
}else{
	sprite_index = menu_buttons_spr;	
}