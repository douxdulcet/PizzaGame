/// Step Event for Ingredient Objects

// Check if the mouse is pressed
if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is over the sauce object
    if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        // Set dragging flag to true
        dragging = true;
        // Calculate offset
        offset_x = mouse_x - x;
        offset_y = mouse_y - y;
    }
}

// Check if the mouse is released
if (mouse_check_button_released(mb_left)) {
    // Reset dragging flag to false
    dragging = false;
}

// If dragging flag is true, update position based on mouse position
if (dragging) {
    x = mouse_x - offset_x;
    y = mouse_y - offset_y;
}
	
else if (placed_ingredient) {
 // If the sauce has been placed on the pizza base, update its position relative to the parent
    if (!parent) {
		parent = instance_nearest(x, y, obj_pizza_base);
        // Calculate the offset between the sauce and the parent
        offset_x = x - parent.x;
        offset_y = y - parent.y;
        
        // Set the sauce's position relative to the parent's position
        x = parent.x + offset_x;
        y = parent.y + offset_y;
	}
}

