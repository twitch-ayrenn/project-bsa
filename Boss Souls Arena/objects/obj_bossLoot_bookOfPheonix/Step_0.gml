/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtPheonix == false && spawnBuyButton == true && global.hasSlainTheFlameGate == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Pheonixes)
	{
		sprite_index = spr_bookOf_pheonix_outline_green;	
	}
	if (global.selectedFlameGateItems != FlameGateItems.Book_Of_Pheonixes)
	{
		sprite_index = spr_bookOf_pheonix_otuline_red;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_bookOf_pheonix;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
