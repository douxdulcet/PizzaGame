/// @description Insert description here
// You can write your code in this editor
if endofday
{
	scorepercentage = playerscore/highestposible;
	if scorepercentage >= 0.95
	{
		playergrade = "S";
	}
	else if scorepercentage > 0.8
	{
		playergrade = "A";
	}
	else if scorepercentage > 0.7
	{
		playergrade = "B";
	}
	else if scorepercentage > 0.6
	{
		playergrade = "C";
	}
	else if scorepercentage > 0.5
	{
		playergrade = "D";
	}
	else if scorepercentage > 0.4
	{
		playergrade = "E";
	}
	else
	{
		playergrade = "F";
	}
}
// add code to spawn customer and add 100 to highest posible variable
if iscustomer == false
{
	customernumber +=1;
	
	if customernumber = 2
	{
		// put second customer order here
	}
	if customernumber = 3
	{
		// put third customer order here
	}
	highestposible += 100;
	iscustomer = true;
}
