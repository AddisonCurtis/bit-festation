if (hp <= 0) {
	return;	
}


// Drawing health meter
draw_set_color(c_black);
draw_rectangle(10, display_get_gui_height()-105, 40, display_get_gui_height()-5, false);

draw_set_color(c_white);
draw_rectangle(15, display_get_gui_height()-100, 35, display_get_gui_height()-10, false);

//show_debug_message("test");

draw_set_color(c_red);
if (hp > 0) {
	var val = clamp(hp, 0, 100);
	draw_rectangle(15, display_get_gui_height() - val, 35, display_get_gui_height()-10, false);
}


// Draw inventory items
for (var i=0; i<3; i++) {
	if (i == selectedSlot) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_white);
	}
	
	draw_rectangle(15+i*64, 10, 71+i*64, 71, true);
	
	if (inventory[i] != noone) {
		draw_sprite_stretched(object_get_sprite(inventory[i]), 0, 16+i*64, 10, 64, 64);
	}
}

draw_set_color(c_red);
// Remaining enemies
draw_text(display_get_gui_width()-256, 16, "Remaining enemies: " + string(enemyCount));
draw_text(display_get_gui_width()-500, 16, "Money: " + string(money));