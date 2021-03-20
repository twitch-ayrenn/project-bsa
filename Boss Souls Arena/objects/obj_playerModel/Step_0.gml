/// @description Insert description here
// You can write your code in this editor
depth = -1000;
if (gameMaster.menu == Menues.BossLoot)
{
	image_alpha = 0;	
}
if (gameMaster.menu != Menues.BossLoot)
{
	image_alpha = 0;	
}
//size
size = 1.15
if (sprite_index == spr_player_graveling)
{
	size = 0.65;
}
if (sprite_index == spr_player_theBloodKnight)
{
	size = 1;
}
if (gameMaster.menu == Menues.BossLoot)
{
	x = 24;
	y = 43;
	if (sprite_index == spr_player_theMage_menu){y = 46;}
	if (sprite_index == spr_player_graveling){y = 49;}
	if (sprite_index == spr_player_theBloodKnight){y = 47;}
	if (gameMaster.chosenClass == Character.ShadowAssassin){sprite_index = spr_player_theAssasin;}
	if (gameMaster.chosenClass == Character.Pyromancer){sprite_index = spr_player_theMage_menu;}
	if (gameMaster.chosenClass == Character.BloodKnight){sprite_index = spr_player_theBloodKnight;}
	if (gameMaster.chosenClass == Character.PlaugeWalker){sprite_index = spr_player_plagueWalker_idle;}
	if (gameMaster.chosenClass == Character.AgentOfGod){sprite_index = spr_player_agentOfGod_idle;}
	if (gameMaster.chosenClass == Character.Graveling){sprite_index = spr_player_graveling;}
	if (gameMaster.chosenClass == Character.AngelSlayer){sprite_index = spr_player_angelSlayer_idle;}
}
image_xscale = size;
image_yscale = size;