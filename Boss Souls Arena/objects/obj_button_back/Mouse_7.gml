/// @description om clickar
if (gameMaster.menu == Menues.PlayerSelect 
|| gameMaster.menu == Menues.Credits || gameMaster.menu == Menues.Controlls )
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossSelect)
{
	gameMaster.chosenMode = Menues.Campaign;
	gameMaster.menu = Menues.PlayerSelect;	
	gameMaster.bonusHealth = 0;
	gameMaster.bonusSpeed = 0;
	gameMaster.bonusDash = 0;
	gameMaster.bonusDamage = 0;
	gameMaster.bonusFirerate = 0;
	gameMaster.bonusLifeSteal = 0;
	gameMaster.bonusConjur = 0;
	gameMaster.bonusCooldown = 0;
		
	gameMaster.transitionAlpha = 1;
	gameMaster.fightAlpha = 1;
	gameMaster.fightTransitionAlpha = 0;
	gameMaster.tutorialAlpha = 1;
	gameMaster.playerTutorialAlpha = 0;
	gameMaster.quePlayerTutorial = false;
	gameMaster.tutorialFadeOut = false;
	gameMaster.queFight = false;
	gameMaster.fightTransitionAlpha = 0;
	gameMaster.checkOnce = true;
	if (global.tutorial == true)
	{
		global.tutorialBoss = true;
		global.tutorialPlayer = false;
	}
	if (gameMaster.assassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
	if (gameMaster.assassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
	if (gameMaster.pyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
	if (gameMaster.pyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
	if (gameMaster.bloodKnightUnlocked == true){with (obj_npc_theBloodKnight){outline = "unSelected";}}
	if (gameMaster.bloodKnightUnlocked == false){with (obj_npc_theBloodKnight){outline = "locked"}}
	if (gameMaster.plaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){outline = "unSelected";}}
	if (gameMaster.plaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){outline = "locked"}}
	if (gameMaster.agentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){outline = "unSelected";}}
	if (gameMaster.agentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){outline = "locked"}}
	if (gameMaster.angelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){outline = "unSelected";}}
	if (gameMaster.angelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){outline = "locked"}}
	if (gameMaster.gravelingUnlocked == true){with (obj_npc_theGraveling){outline = "unSelected";}}
	if (gameMaster.gravelingUnlocked == false){with (obj_npc_theGraveling){outline = "locked"}}
	with(par_npc){spawnSign = true;}
}
if (gameMaster.menu == Menues.BossLoot)
{
	gameMaster.menu = Menues.PlayerSelect;
	if (gameMaster.assassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
	if (gameMaster.assassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
	if (gameMaster.pyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
	if (gameMaster.pyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
	if (gameMaster.bloodKnightUnlocked == true){with (obj_npc_theBloodKnight){outline = "unSelected";}}
	if (gameMaster.bloodKnightUnlocked == false){with (obj_npc_theBloodKnight){outline = "locked"}}
	if (gameMaster.plaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){outline = "unSelected";}}
	if (gameMaster.plaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){outline = "locked"}}
	if (gameMaster.agentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){outline = "unSelected";}}
	if (gameMaster.agentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){outline = "locked"}}
	if (gameMaster.angelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){outline = "unSelected";}}
	if (gameMaster.angelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){outline = "locked"}}
	if (gameMaster.gravelingUnlocked == true){with (obj_npc_theGraveling){outline = "unSelected";}}
	if (gameMaster.gravelingUnlocked == false){with (obj_npc_theGraveling){outline = "locked"}}
	gameMaster.queFight = false;
	gameMaster.fightTransitionAlpha = 0;
	with(par_npc){spawnSign = true;}
}
if (gameMaster.menu == Menues.Settings)
{
	gameMaster.menu = Menues.Main;
	game_save(global.saveFile);
}
if (gameMaster.menu == Menues.BossSlain && gameMaster.queLeave == false)
{
	if (obj_rewardChest.kingSuprise == false)
	{
		gameMaster.queLeave = true;
		gameMaster.leaveTranistionAlpha = 0;
		global.playMenuMusic = true;

	}
}
if (gameMaster.menu == Menues.Death && gameMaster.queLeave == false)
{
	gameMaster.queLeave = true;
	gameMaster.leaveTranistionAlpha = 0;
	global.playMenuMusic = true;
}
//sound
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
//save
game_save(global.saveFile);