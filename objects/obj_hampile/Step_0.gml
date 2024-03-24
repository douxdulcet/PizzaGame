// Check mouse pressed
if (mouse_check_button_pressed(mb_left)) {
    // Check mouse location
    if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        // Create new instance
        var new_ingredient = instance_create_layer(x, y, layer, obj_ham);
        new_ingredient.dragging = true; // Start dragging 
        new_ingredient.offset_x = mouse_x - new_ingredient.x;
        new_ingredient.offset_y = mouse_y - new_ingredient.y;
    }
}


if (!grabbed && mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
    // Change sprite when grabbed
    if (sprite_changes < array_length_1d(sprite_sequence)) {
        sprite_index = sprite_sequence[sprite_changes];
        sprite_changes++;
    } else {
        // Reset sprite_changes and grabbed if it exceeds max_sprite_changes
        sprite_changes = 0;
        grabbed = false;
    }
} 
}