/// @description Insert description here
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
if (gameMaster.chosenClass == Character.ShadowAssassin && gameMaster.assassinProgress >= bossOnThisCard-1)
{

	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.BloodKnight && gameMaster.bloodKnightProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Shopkeeper && gameMaster.shopkeeperProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.TheRedWarrior && gameMaster.theRedWarriorProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.RainbowSlime && gameMaster.rainbowSlimeProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingProgress >= bossOnThisCard-1)
{
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}