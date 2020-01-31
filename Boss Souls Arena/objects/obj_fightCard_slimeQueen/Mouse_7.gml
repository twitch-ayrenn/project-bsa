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
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Pyromancer && gameMaster.pyromancerProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Shopkeeper && gameMaster.shopkeeperProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.TheRedWarrior && gameMaster.theRedWarriorProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.PlaugeWalker && gameMaster.plaugeWalkerProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.AngelSlayer && gameMaster.angelSlayerProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.RainbowSlime && gameMaster.rainbowSlimeProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
if (gameMaster.chosenClass == Character.Graveling && gameMaster.gravelingProgress >= bossOnThisCard-1)
{
	gameMaster.chosenBoss = bossOnThisCard;
	gameMaster.queFight = true;
}
transitionAlpha = 1;
fightAlpha = 1;
fightTransitionAlpha = 0;
tutorialAlpha = 1;
playerTutorialAlpha = 0;
quePlayerTutorial = false;
tutorialFadeOut = false;
checkOnce = true;
if (global.tutorial == true)
{
	global.tutorialBoss = true;
	global.tutorialPlayer = false;
}
if (audio_is_playing(snd_music_victory) == true)
{
	audio_sound_gain(snd_music_menu,0,(0.25)*1000);
}