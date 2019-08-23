/// @description Insert description here
// You can write your code in this editor
depth = -y-10;
if (instance_exists(obj_player))
{
	global.teir1Damage = (20 + obj_player.hp*0.03)*(1 +(global.playerLevel/75))*global.dD;
	global.teir2Damage = (15 + obj_player.hp*0.02)*(1 +(global.playerLevel/75))*global.dD;
	global.teir3Damage = (12.5 + obj_player.hp*0.018)*(1 +(global.playerLevel/75))*global.dD;
	global.teir4Damage = (8 + obj_player.hp*0.012)*(1 +(global.playerLevel/75))*global.dD;
	global.teir5Damage = (6 + obj_player.hp*0.01)*(1 +(global.playerLevel/75))*global.dD;
	global.teir6Damage = (4 + obj_player.hp*0.006)*(1 +(global.playerLevel/75))*global.dD;
}
if (distance_to_object(obj_player) <= 10 && keyboard_check_released(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Infernal_Wisp)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_boss_theInfernalWisp);
	instance_create_depth(x,y,depth,obj_infernal_range)
}
if (global.wispAmount <= 0 && rewardOnce == true)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
	}
	rewardOnce = false;
	if (global.hasSlainTheInfernalWisp == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.theInfernalWispReward = 1250;
	global.playerMoney += 890;
	global.hasSlainTheInfernalWisp = true;
	global.playerLevel += 1;
	if (instance_exists(obj_infernal_range))	{with(obj_infernal_range){instance_destroy();}}
	if (instance_exists(obj_infernalShot))	{with(obj_infernalShot){instance_destroy();}}
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		//proggresion
		if (chosenClass == Class.The_Assasin){global.assasinInfernal = true;}
		if (chosenClass == Class.The_Warrior){global.warriorInfernal = true;}
		if (chosenClass == Class.The_Mage){global.mageInfernal = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopInfernal = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodInfernal = true;}
	}
	audio_stop_sound(snd_boss_theInfernalWisp);
}
