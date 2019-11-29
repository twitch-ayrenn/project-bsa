/// @description Insert description here
// You can write your code in this editor
draw_self();
var drawCompletedText = false;
if (gameMaster.chosenClass == Character.TheRedWarrior && gameMaster.theRedWarriorItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.Shopkeeper && gameMaster.shopkeeperItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.RainbowSlime && gameMaster.rainbowSlimeItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.AgentOfGod && gameMaster.agentOfGodItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingItems[bossOnThisCard] == true){drawCompletedText = true;}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerItems[bossOnThisCard] == true){drawCompletedText = true;}
if (drawCompletedText == true)
{
	image_blend = c_gray
	draw_set_font(fnt_menu_fill);
	draw_set_halign(fa_center);
	draw_text_transformed_color(x,y+17,"Deafeated",0.115*size,0.115*size,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	draw_text_transformed_color(x,y+7,"Enemy",0.115*size,0.115*size,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);	
	draw_set_halign(fa_left);
}