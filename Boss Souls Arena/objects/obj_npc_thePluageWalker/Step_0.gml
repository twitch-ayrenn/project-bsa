/// @description Insert description here
// You can write your codein this editor
depth = -y;
if (gameMaster.menu != Menues.PlayerSelect)
{
	outline = "noOutline"
}
if (spawnSign == true && gameMaster.chosenMode == Menues.Campaign)
{
	spawnSign = false;
	if (gameMaster.plaugeWalkerUnlocked == true){instance_create_depth(x,y-20,depth-1,obj_playButton_character);}
}
if (spawnSign == true && gameMaster.chosenMode == Menues.BossRush)
{
	spawnSign = false;
	if (gameMaster.bossPlaugeWalkerUnlocked == true){instance_create_depth(x,y-20,depth-1,obj_playButton_character);}
}