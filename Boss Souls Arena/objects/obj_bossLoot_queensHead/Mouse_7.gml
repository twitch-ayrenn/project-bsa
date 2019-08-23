/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu == Menues.BossLoot)
{
	if (global.hasSlainDeathQueenZeria == true)
	{
		if (global.hasBoughtQueensHead == true)
		{
			global.selectedDeathLordItems = Artifacts.QueensHead;
			if (instance_exists(obj_selectedArtifactArrows) == false){instance_create_depth(x,y,-1000,obj_selectedArtifactArrows);}
		}
		if (global.hasBoughtQueensHead == false && global.playerMoney >= global.costQueensHead)
		{
			global.hasBoughtQueensHead = true;
			global.playerMoney -= global.costQueensHead;
			var nearestBuySign = instance_nearest(x,y-10,obj_buyIcon);
			instance_destroy(nearestBuySign);
		}		
	}
}