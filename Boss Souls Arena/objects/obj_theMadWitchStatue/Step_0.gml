/// @description Insert description here
// You can write your code in this editor
depth = -y-5;
if (distance_to_object(obj_player) <= 10 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.menu == Menues.Play && instance_exists(par_enemy) == false)
{
	summonedBoss = false;
	image_index = 1;
	with (obj_theMadWitchStatue){image_index = 1;}
	spin = true;
	with (obj_player)
	{
		x = 2672;
		y = 2016;
	}
	instance_create_depth(2784,2128,1,obj_boss_theGreenWitch);
	instance_create_depth(2672,2128,1,obj_boss_theYellowWitch);
	instance_create_depth(2784,2016,1,obj_boss_theOrangeWitch);
	instance_create_depth(2727,2071,1,obj_theMadWitches_range);
	if (global.musicOn == true)
	{
		audio_play_sound(snd_boss_theMadWitches,Prioity.Normal,true);
	}
}
if (instance_exists(obj_player) && summonedBoss == false)
{
	with(obj_player){if (hp > (0.5*maxHp)){hp -= 1/30;}}
}
if (spin == true)
{
	spin = false;
	if (global.soundOn == true && instance_exists(par_witch))
	{
		var randomLaugh = choose(1,2,3,4);
		if(randomLaugh == 1)
		{
			if (instance_exists(obj_boss_theOrangeWitch))
			{
				audio_play_sound(snd_eliseLaugh,Prioity.Normal,false);
			}
		}
		if(randomLaugh == 2)
		{
			if (instance_exists(obj_boss_theGreenWitch))
			{
				audio_play_sound(snd_anniesLaugh,Prioity.Normal,false);
			}
		}
		if(randomLaugh == 3)
		{
			if (instance_exists(obj_boss_theYellowWitch))
			{
				audio_play_sound(snd_scarletsLaugh,Prioity.Normal,false);
			}
		}
	}
	if (instance_exists(obj_boss_theGreenWitch))
	{
		with(obj_boss_theGreenWitch)
		{
			witchPostion += 1;
		}
	}
	if (instance_exists(obj_boss_theYellowWitch))
	{
		with(obj_boss_theYellowWitch)
		{
			witchPostion += 1;
		}
	}
	if (instance_exists(obj_boss_theOrangeWitch))
	{
		with(obj_boss_theOrangeWitch)
		{
			witchPostion += 1;
		}
	}
	alarm[0] = (4)*30;
}
if (instance_exists(obj_boss_theGreenWitch) == false && 
instance_exists(obj_boss_theOrangeWitch) == false && 
instance_exists(obj_boss_theYellowWitch) == false && summonedBoss == false)
{
	if (rewardOnce == true)
	{
		rewardOnce = false;
		if (global.musicOn == true)
		{
			audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
		}
		var playerWinText = global.playerLineVictory;
		var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		playerText.color = global.playerTextColor;
		playerText.text = playerWinText;
		with(gameMaster)
		{
			menu = Menues.BossSlain;
			//save
			game_save(global.saveFile);
			if (chosenClass == Class.The_Assasin){global.assasinWitch = true;}
			if (chosenClass == Class.The_Warrior){global.warriorWitch = true;}
			if (chosenClass == Class.The_Mage){global.mageWitch = true;}
			if (chosenClass == Class.The_Shopkeeper){global.shopWitch = true;}
			if (chosenClass == Class.The_BloodKnight){global.bloodWitch = true;}
		}
		if (global.hasSlainTheMadWitches == false && global.dD < 1){global.dD = 1;}
		if (global.dD >= 1){global.dD += 0.04;}
		global.dD += 0.04;
		global.theMadWitchesReward = 800;
		global.playerMoney += 500;
		global.hasSlainTheMadWitches= true;
		global.playerLevel += 1;
	}
}
