/// @description Insert description here
// You can write your code in this editor
depth = -y-30;
if (distance_to_object(obj_player) <= 15 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Soul_Guards)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(x,y,1,obj_boss_theSoulGuards);
	instance_create_depth(x,y,depth,obj_theSoulGuards_range);
}
if (summonedBoss == false && instance_exists(obj_boss_theSoulGuards) == false && instance_exists(obj_theSoulGuards_2) == false && global.summonBossOnce == false && rewardOnce == true)
{
	rewardOnce = false;
	if (global.soundOn == true)
	{
		//audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	if (global.musicOn == true)
	{
		audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
	}
	//boss
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		//
		if (chosenClass == Class.The_Assasin){global.assasinGuards = true;}
		if (chosenClass == Class.The_Warrior){global.warriorGuards = true;}
		if (chosenClass == Class.The_Mage){global.mageGuards = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopGuards = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodGuards = true;}
	}
	if (global.hasSlainTheSoulGuards == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.theSoulGuardsReward += 1000;
	global.playerMoney += 1000;
	global.playerLevel += 1;
	global.hasSlainTheSoulGuards = true;
	audio_stop_sound(snd_boss_theSoulGuard);
	if (instance_exists(obj_theSoulGuards_range)){with(obj_theSoulGuards_range){instance_destroy();}}
	if (instance_exists(obj_sword_projectile)){with(obj_sword_projectile){instance_destroy();}}
}