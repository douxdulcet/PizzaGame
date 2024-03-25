/// @description Insert description here
// You can write your code in this editor
//show_debug_message(cooktime);
if full == true
{
	if obj_pizza_base.timer <= 5 * room_speed
	{
		raw = true;
	}
	else if obj_pizza_base.timer < 10 * room_speed
	{
		underdone = true;
	}
	else if obj_pizza_base.timer > 10 * room_speed && obj_pizza_base.timer < 15 * room_speed
	{
		perfect = true;
	}
	else if obj_pizza_base.timer > 15 * room_speed && obj_pizza_base.timer < 20 * room_speed
	{
		overdone = true;
	}
	else if obj_pizza_base.timer > 20 * room_speed
	{
		burnt = true;
	}
	// remove pizza from slot
	/////////
	// set slot full to false
	full = false;
	// set slot cook time to zero
	//cooktime = 0;
	obj_game.assemblyfinished = true;
	obj_game.iscustomer = false;
	onetimecall = false;
}