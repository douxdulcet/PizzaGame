/// @description Insert description here
// You can write your code in this editor
if oven.slot1full == true
{
	if oven.slot1cooktime <= 5
	{
		raw = true;
	}
	else if oven.slot1cooktime < 10
	{
		underdone = true;
	}
	else if oven.slot1cooktime > 10 && oven.slot1cooktime < 15
	{
		perfect = true;
	}
	else if oven.slot1cooktime > 15 && oven.slot1cooktime < 20
	{
		overdone = true;
	}
	else if oven.slot1cooktime > 20
	{
		burnt = true;
	}
	// remove pizza from slot
	/////////
	// set slot full to false
	oven.slot1full = false;
	// set slot cook time to zero
	oven.slot1cooktime = 0;
}