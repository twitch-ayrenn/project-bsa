/// @description Insert description here
// You can write your code in this editor
depth = obj_fightCard_theBloodZombie.depth+1;
if (gameMaster.menu == Menues.BossSelect || gameMaster.menu == Menues.Settings|| gameMaster.menu == Menues.BossLoot)
{
	if (image_alpha < 0.7){image_alpha += 1.1/30;}
}
if (gameMaster.menu != Menues.BossSelect && gameMaster.menu != Menues.Settings && gameMaster.menu != Menues.BossLoot)
{
	if (image_alpha > 0){image_alpha -= 1.3/30;}
}