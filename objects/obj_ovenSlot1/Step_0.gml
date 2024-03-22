/// @description Insert description here
// You can write your code in this editor
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
}
if underdone
{
	obj_game.playerscore = obj_game.playerscore + 20;
	underdone = false;
}
if perfect
{
	obj_game.playerscore = obj_game.playerscore + 40;
	perfect = false;
}