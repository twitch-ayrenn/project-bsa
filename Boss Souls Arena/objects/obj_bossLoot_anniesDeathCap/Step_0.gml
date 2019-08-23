/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtAnniesDeathCap == false && spawnBuyButton == true && global.hasSlainTheMadWitches == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedWitchItem == WitchBossItems.AnniesDeathCap)
	{
		sprite_index = spr_anniesDeathCap_greenOutline;	
	}
	if (global.selectedWitchItem != WitchBossItems.AnniesDeathCap)
	{
		sprite_index = spr_anniesDeathCap_redOutline;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_anniesDeathCap;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
