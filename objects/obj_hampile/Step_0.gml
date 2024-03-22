// Check if mouse pressed
if (mouse_check_button_pressed(mb_left)) {
    // Check mouse location
    if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        // Create a new instance of the ingredient at the pile's position
        var new_ingredient = instance_create_layer(x, y, layer, obj_ham);
        new_ingredient.dragging = true; // Start dragging the newly created ingredient
        new_ingredient.offset_x = mouse_x - new_ingredient.x; // Calculate offset so ingredient doesn't snap to mouse position
        new_ingredient.offset_y = mouse_y - new_ingredient.y;
    }
}