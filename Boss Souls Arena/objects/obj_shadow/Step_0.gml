/// @description Insert description here
// You can write your code in this editor
image_xscale = global.player.image_xscale;
if (destroyStacks > 0)
{
	destroyStacks--;
}
if (destroyStacks <= 0)
{
	instance_destroy();
}