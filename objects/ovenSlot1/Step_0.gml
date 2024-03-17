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
	game.playerscore = game.playerscore + 20;
	overdone = false;
}
if underdone
{
	game.playerscore = game.playerscore + 20;
	underdone = false;
}
if perfect
{
	game.playerscore = game.playerscore + 40;
	perfect = false;
}