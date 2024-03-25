/// @description Insert description here
// You can write your code in this editor
// Define the box area
var box_x = 3062;      // Replace with the top-left corner x-coordinate of the box area
var box_y = 276;      // Replace with the top-left corner y-coordinate of the box area
var box_width = 500;  // Replace with the width of the box area
var box_height = 300; // Replace with the height of the box area

// Check if pizza_base is in the box area
if (place_meeting(box_x, box_y, obj_pizza_base) ||
    place_meeting(box_x + box_width, box_y, obj_pizza_base) ||
    place_meeting(box_x, box_y + box_height, obj_pizza_base) ||
    place_meeting(box_x + box_width, box_y + box_height, obj_pizza_base)) {
     // Check if pizza_base hasn't changed its sprite yet
        // Start a timer for pizza_base
        obj_pizza_base.timer += 1; // Increment the timer
		if onetimecall == false
		{
			full = true;
			onetimecall = true;
		}
    }
// Check if the timer for pizza_base has reached 10 or 20 seconds
if (instance_exists(obj_pizza_base)){
if (obj_pizza_base.timer >= room_speed * 10 && !obj_pizza_base.sprite_cooked) {
    // Change sprite after 10 seconds
    obj_pizza_base.sprite_index = pizzaBaseCooked; // Change to the new sprite
    obj_pizza_base.sprite_cooked = true; // Set flag to true
}
if (obj_pizza_base.timer >= room_speed * 20 && !obj_pizza_base.sprite_burnt) {
    // Change sprite after 20 seconds
    obj_pizza_base.sprite_index = pizzaBaseBurnt; // Change to the new sprite
    obj_pizza_base.sprite_burnt= true; // Set flag to true

}
}


// Check if cheese is in the box area
if (place_meeting(box_x, box_y, obj_cheese) ||
    place_meeting(box_x + box_width, box_y, obj_cheese) ||
    place_meeting(box_x, box_y + box_height, obj_cheese) ||
    place_meeting(box_x + box_width, box_y + box_height, obj_cheese)) {
	obj_cheese.timer += 1; // Increment the timer

    }
// Check if the timer for pizza_base has reached 10 or 20 seconds
if (instance_exists(obj_cheese)){
if (obj_cheese.timer >= room_speed * 10 && !obj_cheese.sprite_cooked) {
    // Change sprite after 10 seconds
    obj_cheese.sprite_index = cheeseCooked; // Change to the new sprite
    obj_cheese.sprite_cooked = true; // Set flag to true

}

if (obj_cheese.timer >= room_speed * 20 && !obj_cheese.sprite_burnt) {
    // Change sprite after 20 seconds
    obj_cheese.sprite_index = cheeseBurnt; // Change to the new sprite
    obj_cheese.sprite_burnt= true; // Set flag to true

}
}


// Check if ham is in the box area
if (place_meeting(box_x, box_y, obj_ham) ||
    place_meeting(box_x + box_width, box_y, obj_ham) ||
    place_meeting(box_x, box_y + box_height, obj_ham) ||
    place_meeting(box_x + box_width, box_y + box_height, obj_ham)) {
	obj_ham.timer += 1; // Increment the timer

    }
// Check if the timer for ham has reached 10 or 20 seconds
if (instance_exists(obj_ham)){
if (obj_ham.timer >= room_speed * 10 && !obj_ham.sprite_cooked) {
    // Change sprite after 10 seconds
    obj_ham.sprite_index = hamCooked; // Change to the new sprite
    obj_ham.sprite_cooked = true; // Set flag to true

}

if (obj_ham.timer >= room_speed * 20 && !obj_ham.sprite_burnt) {
    // Change sprite after 20 seconds
    obj_ham.sprite_index = hamBurnt; // Change to the new sprite
    obj_ham.sprite_burnt= true; // Set flag to true

}
}


// Check if pepperoni is in the box area
if (place_meeting(box_x, box_y, obj_pepperoni) ||
    place_meeting(box_x + box_width, box_y, obj_pepperoni) ||
    place_meeting(box_x, box_y + box_height, obj_pepperoni) ||
    place_meeting(box_x + box_width, box_y + box_height, obj_pepperoni)) {
	obj_pepperoni.timer += 1; // Increment the timer

    }
// Check if the timer for ham has reached 10 or 20 seconds
if (instance_exists(obj_pepperoni)){
if (obj_pepperoni.timer >= room_speed * 10 && !obj_pepperoni.sprite_cooked) {
    // Change sprite after 10 seconds
    obj_pepperoni.sprite_index = pepCooked; // Change to the new sprite
    obj_pepperoni.sprite_cooked = true; // Set flag to true
	
}

if (obj_pepperoni.timer >= room_speed * 20 && !obj_pepperoni.sprite_burnt) {
    // Change sprite after 20 seconds
    obj_pepperoni.sprite_index = pepBurnt; // Change to the new sprite
    obj_pepperoni.sprite_burnt= true; // Set flag to true
	
}
}


// Check if sauce is in the box area
if (place_meeting(box_x, box_y, obj_sauce) ||
    place_meeting(box_x + box_width, box_y, obj_sauce) ||
    place_meeting(box_x, box_y + box_height, obj_sauce) ||
    place_meeting(box_x + box_width, box_y + box_height, obj_sauce)) {
	obj_sauce.timer += 1; // Increment the timer

    }
// Check if the timer for ham has reached 10 or 20 seconds
if (instance_exists(obj_sauce)){
if (obj_sauce.timer >= room_speed * 10 && !obj_sauce.sprite_cooked) {
    // Change sprite after 10 seconds
    obj_sauce.sprite_index = tomSauceCooked; // Change to the new sprite
    obj_sauce.sprite_cooked = true; // Set flag to true

}

if (obj_sauce.timer >= room_speed * 20 && !obj_sauce.sprite_burnt) {
    // Change sprite after 20 seconds
    obj_sauce.sprite_index = tomSauceBurnt; // Change to the new sprite
    obj_sauce.sprite_burnt= true; // Set flag to true

}
}




if full == true
{
	cooktime += 1;
}
if burnt
{
	burnt = false;
}
if raw 
{
	raw = false;
}
if overdone
{
	obj_game.playerscore = obj_game.playerscore + 20;
	overdone = false;
	show_debug_message(obj_game.playerscore);
}
if underdone
{
	obj_game.playerscore = obj_game.playerscore + 20;
	show_debug_message(obj_game.playerscore);
	underdone = false;
}
if perfect
{
	obj_game.playerscore = obj_game.playerscore + 40;
	show_debug_message(obj_game.playerscore);
	perfect = false;
}