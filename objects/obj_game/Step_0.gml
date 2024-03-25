/// @description Insert description here
// You can write your code in this editor
if endofday == true
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
	
	show_debug_message("Your grade for today was: " + playergrade + "");
	endofday = false;
}
// add code to spawn customer and add 100 to highest posible variable
if iscustomer == false
{
	customernumber +=1;
	
	if customernumber == 2
	{
		instance_create_layer(100, -190, "Instances", obj_customer, {cheese: true, pepperoni: false, ham: true, tomatosauce: true});
	}
	if customernumber == 3
	{
		instance_create_layer(100, -190, "Instances", obj_customer, {cheese: true, pepperoni: true, ham: false, tomatosauce: true});
	}
	if customernumber == 4
	{
		instance_create_layer(100, -190, "Instances", obj_customer, {cheese: true, pepperoni: false, ham: false, tomatosauce: true});
	}
	highestposible += 100;
	iscustomer = true;
}
// called if assembly is finished
if assemblyfinished == true
{
	// change number to how many total customers there are in the day
	if customernumber >= 4
	{
		endofday = true;
	}
	if obj_pizza_base.cheese == obj_customer.cheese
	{
		playerscore += 15;
	}
	if obj_pizza_base.ham == obj_customer.ham
	{
		playerscore += 15;
	}
	if obj_pizza_base.pepperoni == obj_customer.pepperoni
	{
		playerscore += 15;
	}
	if obj_pizza_base.tomatosauce == obj_customer.tomatosauce
	{
		playerscore += 15;
	}
	
	assemblyfinished = false;
	obj_customer.served = true;
	//show_debug_message(playerscore);
	
}