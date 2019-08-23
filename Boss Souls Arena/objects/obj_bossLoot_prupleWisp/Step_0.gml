/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtPurpleWisp == false && spawnBuyButton == true && global.hasSlainTheWispMother == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedWispItem == WispBossItems.PurpleWispBottle)
	{
		sprite_index = spr_wispJar_purple_greenOutline;		
	}
	if (global.selectedWispItem != WispBossItems.PurpleWispBottle)
	{
		sprite_index = spr_wispJar_purple_redOutline;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_wispJar_purple;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
