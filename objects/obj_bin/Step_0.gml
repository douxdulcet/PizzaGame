// Define the box area
var bin_box_x = 3948;      // Replace with the top-left corner x-coordinate
var bin_box_y = 749;      // Replace with the top-left corner y-coordinate
var bin_box_width = 250;   // Replace with the width of the box area
var bin_box_height = 250;  // Replace with the height of the box area

// Check for objects within the box area
with(obj_cheese) {
    if (x >=bin_box_x && x <= bin_box_x + bin_box_width && y >= bin_box_y && y <= bin_box_y + bin_box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_sauce) {
    if (x >= bin_box_x && x <= bin_box_x + bin_box_width && y >= bin_box_y && y <= bin_box_y + bin_box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_pizza_base) {
    if (x >= bin_box_x && x <= bin_box_x + bin_box_width && y >= bin_box_y && y <= bin_box_y + bin_box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_pepperoni) {
    if (x >= bin_box_x && x <= bin_box_x + bin_box_width && y >= bin_box_y && y <= bin_box_y + bin_box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_ham) {
    if (x >= bin_box_x && x <= bin_box_x + bin_box_width && y >= bin_box_y && y <= bin_box_y + bin_box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}