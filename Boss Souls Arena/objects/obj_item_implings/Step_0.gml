/// @description Insert description here
depth = -999;
if (gameMaster.chosenClass == Character.TheRedWarrior && gameMaster.theRedWarriorItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.Shopkeeper && gameMaster.shopkeeperItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.RainbowSlime && gameMaster.rainbowSlimeItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.AgentOfGod && gameMaster.agentOfGodItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerItems[bossForThisItem] == true){visible = true;mask_index = spr_loot_size;}
if (global.deBugg == true){visible = true;mask_index = spr_loot_size;}
if (global.itemImpling == true){visible = true;mask_index = spr_loot_size;}
if (gameMaster.menu != Menues.BossLoot){visible = false;mask_index = spr_noMask;}
if (reset == true)
{
	reset = false;
	x = xstart;
	y = ystart;
	thisItemSelected = false;
	global.itemSelected[bossForThisItem] = false;
}