/// @description Insert description here
// You can write your codein this editor
depth = -y;
if (gameMaster.menu != Menues.PlayerSelect)
{
	sprite_index = spr_player_theMage_menu;
}
if (spawnSign == true)
{
	spawnSign = false;
	if (gameMaster.pyromancerUnlocked == true){instance_create_depth(x,y-20,depth-1,obj_playButton_character);}
	
}