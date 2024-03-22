/// @description Insert description here
// You can write your code in this editor
if obj_oven.slot1full == true
{
	if obj_oven.slot1cooktime <= 5
	{
		raw = true;
	}
	else if obj_oven.slot1cooktime < 10
	{
		underdone = true;
	}
	else if obj_oven.slot1cooktime > 10 && obj_oven.slot1cooktime < 15
	{
		perfect = true;
	}
	else if obj_oven.slot1cooktime > 15 && obj_oven.slot1cooktime < 20
	{
		overdone = true;
	}
	else if obj_oven.slot1cooktime > 20
	{
		burnt = true;
	}
	// remove pizza from slot
	/////////
	// set slot full to false
	obj_oven.slot1full = false;
	// set slot cook time to zero
	obj_oven.slot1cooktime = 0;
	
	obj_game.iscustomer = false;
}