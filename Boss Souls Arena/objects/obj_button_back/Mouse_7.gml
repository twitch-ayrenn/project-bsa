/// @description om clickar
if (gameMaster.menu == Menues.PlayerSelect)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossSelect)
{
	gameMaster.menu = Menues.BossLoot;
}
if (gameMaster.menu == Menues.BossLoot)
{
	gameMaster.menu = Menues.PlayerSelect;
	if (gameMaster.assassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
	if (gameMaster.assassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
	if (gameMaster.pyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
	if (gameMaster.pyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
	if (gameMaster.shopkeeperUnlocked == true){with (obj_npc_theShopkeeper){outline = "unSelected";}}
	if (gameMaster.shopkeeperUnlocked == false){with (obj_npc_theShopkeeper){outline = "locked"}}
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
if (gameMaster.menu == Menues.Settings)
{
	gameMaster.menu = Menues.Main;
	game_save(global.saveFile);
}
if (gameMaster.menu == Menues.BossSlain && gameMaster.queLeave == false)
{
	gameMaster.queLeave = true;
	gameMaster.leaveTranistionAlpha = 0;
	global.playMenuMusic = true;
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
