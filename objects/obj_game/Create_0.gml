/// @description Insert description here
// You can write your code in this editor
playerscore = 0;
// used to store the percentage of the highest possible score the player got
// then used to determine the grade for the day
scorepercentage = 0.0;
// increase this variable by 100 every round
highestposible = 0;
endofday = false;
playergrade = "";
// after customer has been served change this to false so another customer can be spawned
iscustomer = true;
// spawns initial customer
customernumber = 1;
instance_create_layer(384, 576, "Instances", obj_customer, {cheese: true, pepperoni: true, ham: false, tomatosauce: true});
highestposible =+ 100;
// used to determine if the assembly has finished
assemblyfinished = false;
