/// @description Insert description here
// You can write your code in this editor
if full == true
{
	if cooktime <= 5
	{
		raw = true;
	}
	else if cooktime < 10
	{
		underdone = true;
	}
	else if cooktime > 10 && cooktime < 15
	{
		perfect = true;
	}
	else if cooktime > 15 && cooktime < 20
	{
		overdone = true;
	}
	else if cooktime > 20
	{
		burnt = true;
	}
	// remove pizza from slot
	/////////
	// set slot full to false
	full = false;
	// set slot cook time to zero
	cooktime = 0;
	obj_customer.instance_destroy();
	obj_game.iscustomer = false;
}