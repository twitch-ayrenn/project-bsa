/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtGuardianWisp == false && spawnBuyButton == true && global.hasSlainTheInfernalWisp == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedInfernalItems == InfernalBossItems.Guardian_Wisp)
	{
		sprite_index = spr_wispJar_guardian_outline_green;	
	}
	if (global.selectedInfernalItems != InfernalBossItems.Guardian_Wisp)
	{
		sprite_index = spr_wispJar_guardian_outline_red;
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_wispJar_guardian;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
