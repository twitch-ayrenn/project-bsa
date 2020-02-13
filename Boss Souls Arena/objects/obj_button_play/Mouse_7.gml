/// @description Insert description here
gameMaster.menu = Menues.PlayerSelect;	
gameMaster.bonusHealth = 0;
gameMaster.bonusSpeed = 0;
gameMaster.bonusDash = 0;
gameMaster.bonusDamage = 0;
gameMaster.bonusFirerate = 0;
gameMaster.bonusLifeSteal = 0;
gameMaster.bonusAura = 0;
gameMaster.bonusConjur = 0;
gameMaster.bonusCooldown = 0;
with (gameMaster)
{
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
}
if (gameMaster.theRedWarriorUnlocked == true){with (obj_npc_theRedWarrior){outline = "unSelected";}}
if (gameMaster.theRedWarriorUnlocked == false){with (obj_npc_theRedWarrior){outline = "locked";}}
if (gameMaster.assassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
if (gameMaster.assassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
if (gameMaster.pyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
if (gameMaster.pyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
if (gameMaster.shopkeeperUnlocked == true){with (obj_npc_theShopkeeper){outline = "unSelected";}}
if (gameMaster.shopkeeperUnlocked == false){with (obj_npc_theShopkeeper){outline = "locked"}}
if (gameMaster.bloodKnightUnlocked == true){with (obj_npc_theBloodKnight){outline = "unSelected";}}
if (gameMaster.bloodKnightUnlocked == false){with (obj_npc_theBloodKnight){outline = "locked"}}
if (gameMaster.rainbowSlimeUnlocked == true){with (obj_npc_theRainbowSlime){outline = "unSelected";}}
if (gameMaster.rainbowSlimeUnlocked == false){with (obj_npc_theRainbowSlime){outline = "locked"}}
if (gameMaster.plaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){outline = "unSelected";}}
if (gameMaster.plaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){outline = "locked"}}
if (gameMaster.agentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){outline = "unSelected";}}
if (gameMaster.agentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){outline = "locked"}}
if (gameMaster.angelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){outline = "unSelected";}}
if (gameMaster.angelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){outline = "locked"}}
if (gameMaster.gravelingUnlocked == true){with (obj_npc_theGraveling){outline = "unSelected";}}
if (gameMaster.gravelingUnlocked == false){with (obj_npc_theGraveling){outline = "locked"}}
with(par_npc){spawnSign = true;}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}