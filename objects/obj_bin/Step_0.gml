// Define the box area
var box_x = 3928;      // Replace with the top-left corner x-coordinate
var box_y = 498;      // Replace with the top-left corner y-coordinate
var box_width = 250;   // Replace with the width of the box area
var box_height = 250;  // Replace with the height of the box area

// Check for objects within the box area
with(obj_cheese) {
    if (x >= box_x && x <= box_x + box_width && y >= box_y && y <= box_y + box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_sauce) {
    if (x >= box_x && x <= box_x + box_width && y >= box_y && y <= box_y + box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_pizza_base) {
    if (x >= box_x && x <= box_x + box_width && y >= box_y && y <= box_y + box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}
// Check for objects within the box area
with(obj_pepperoni) {
    if (x >= box_x && x <= box_x + box_width && y >= box_y && y <= box_y + box_height) {
        // If the object is within the box area, delete it
        instance_destroy();
    }
}