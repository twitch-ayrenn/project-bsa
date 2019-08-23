/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainDeathKingZarok == true)
	{
		if (global.hasBoughtKingHead == true)
		{
			global.selectedDeathLordItems = Artifacts.KingsHead;
			if (instance_exists(obj_selectedArtifactArrows) == false){instance_create_depth(x,y,-1000,obj_selectedArtifactArrows);}
		}
		if (global.hasBoughtKingHead == false && global.playerMoney >= global.costKingsHead)
		{
			global.hasBoughtKingHead = true;
			global.playerMoney -= global.costKingsHead;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}