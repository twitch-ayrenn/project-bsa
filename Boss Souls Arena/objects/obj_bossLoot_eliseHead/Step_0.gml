/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtEliseHead == false && spawnBuyButton == true && global.hasSlainTheMadWitches == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedWitchItem == WitchBossItems.EliseHead)
	{
		sprite_index = spr_eliseHead_greenOutline;	
	}
	if (global.selectedWitchItem != WitchBossItems.EliseHead)
	{
		sprite_index = spr_eliseHead_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_eliseHead;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
