/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasBoughtKingHead == false && spawnBuyButton == true && global.hasSlainDeathKingZarok == true)
	{
		spawnBuyButton = false;
		instance_create_depth(x,y-6,-1000,obj_buyIcon);
	}
	if (global.selectedDeathLordItems == Artifacts.KingsHead)
	{
		sprite_index = spr_kingHead_outline_green;		
	}
	if (global.selectedDeathLordItems != Artifacts.KingsHead)
	{
		sprite_index = spr_kingHead_outline_red;	
	}
}
if (gameMaster.menu != Menues.BossLoot)
{
	sprite_index = spr_kingHead;
	with (obj_buyIcon){instance_destroy();}
	spawnBuyButton = true;
}
