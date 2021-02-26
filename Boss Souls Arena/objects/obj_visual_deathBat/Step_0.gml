/// @description Insert description here
depth = global.player.depth+1;
image_xscale = global.player.image_xscale;
image_alpha = global.player.image_alpha;
x = global.player.x;
y = global.player.y;
if (global.itemSelected[Boss.ArenaKing] == true){y = global.player.y-7;}
if (global.player.hp > 0)
{
	global.player.sprite_index = global.player.idleSprite;
	global.player.image_index = 0;
}