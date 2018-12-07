//draws enemy health bar and sprite
draw_self();
draw_healthbar(x-32, y-42, x+32, y-37, (curr_health/max_health)*100, c_black, c_red, c_red, 0, true, true);