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

// Check if the pizza base object is colliding with any of the ingredient objects
if (place_meeting(x, y, obj_cheese)) {
    // If it is, check which ingredient is being dragged onto it
    var inst = instance_place(x, y, obj_cheese);
    if (inst != noone) {
        // Check if the ingredient is being dragged
        if (inst.dragging) {
            // If the ingredient is being dragged, update its position to follow the mouse
            inst.x = mouse_x - inst.offset_x;
            inst.y = mouse_y - inst.offset_y;
        } 
    }
}

// Check if the pizza base object is colliding with any of the ingredient objects
if (place_meeting(x, y, obj_sauce)) {
    // If it is, check which ingredient is being dragged onto it
    var inst = instance_place(x, y, obj_sauce);
    if (inst != noone) {
        // Check if the ingredient is being dragged
        if (inst.dragging) {
            // If the ingredient is being dragged, update its position to follow the mouse
            inst.x = mouse_x - inst.offset_x;
            inst.y = mouse_y - inst.offset_y;
        }
    }
}

// Check if the pizza base object is colliding with any of the ingredient objects
if (place_meeting(x, y, obj_pepperoni)) {
    // If it is, check which ingredient is being dragged onto it
    var inst = instance_place(x, y, obj_pepperoni);
    if (inst != noone) {
        // Check if the ingredient is being dragged
        if (inst.dragging) {
            // If the ingredient is being dragged, update its position to follow the mouse
            inst.x = mouse_x - inst.offset_x;
            inst.y = mouse_y - inst.offset_y;
        }
    }
}

