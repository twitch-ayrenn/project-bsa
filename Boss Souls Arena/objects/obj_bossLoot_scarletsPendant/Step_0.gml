/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtScarletsPendant == false && spawnBuyButton == true && global.hasSlainTheMadWitches == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
	{
		sprite_index = spr_scarletsPendant_greenOutline;	
	}
	if (global.selectedWitchItem != WitchBossItems.ScarletsPendant)
	{
		sprite_index = spr_scarletsPendant_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_scarletsPendant;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
