/// @description Insert description here
// You can write your code in this editor
depth = -1000;
if (gameMaster.menu == Menues.PlayerSelect || gameMaster.menu == Menues.BossLoot)
{
	visible = true;	
}
if (gameMaster.menu != Menues.PlayerSelect && gameMaster.menu != Menues.BossLoot)
{
	visible = false;	
}
if (sprite_index != spr_player_theRainbowSlime && sprite_index != spr_player_graveling)
{
	size = 1.25;
}
if (gameMaster.menu == Menues.PlayerSelect)
{
	x = 28;
	y = 56;
}
if (gameMaster.menu == Menues.BossLoot)
{
	x = 28-4;
	y = 56-20;
	if (gameMaster.chosenClass == Character.TheRedWarrior){sprite_index = spr_player_theWarrior;}
	if (gameMaster.chosenClass == Character.ShadowAssassin){sprite_index = spr_player_theAssasin;}
	if (gameMaster.chosenClass == Character.Pyromancer){sprite_index = spr_player_theMage_menu;}
	if (gameMaster.chosenClass == Character.Shopkeeper){sprite_index = spr_player_theShopkeeper;}
	if (gameMaster.chosenClass == Character.BloodKnight){sprite_index = spr_player_theBloodKnight;}
	if (gameMaster.chosenClass == Character.RainbowSlime){sprite_index = spr_player_theRainbowSlime;}
	if (gameMaster.chosenClass == Character.PlaugeWalker){sprite_index = spr_player_plagueWalker_idle;}
	if (gameMaster.chosenClass == Character.AgentOfGod){sprite_index = spr_player_agentOfGod_idle;}
	if (gameMaster.chosenClass == Character.Graveling){sprite_index = spr_player_graveling;}
	if (gameMaster.chosenClass == Character.AngelSlayer){sprite_index = spr_player_angelSlayer_idle;}
}
if (sprite_index != spr_player_theRainbowSlime){image_blend = c_white;}
image_xscale = size;
image_yscale = size;