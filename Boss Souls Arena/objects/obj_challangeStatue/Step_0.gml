/// @description Insert description here
// You can write your code in this editor
depth = -y-15;
if (distance_to_object(obj_player) <= 15 && keyboard_check(ord("E")) && summonedBoss == true && gameMaster.chosenBoss == Bosses.Death_Lords)
{
	summonedBoss = false;
	image_index = 1;
	instance_create_depth(1000,1700,-1700,obj_challangeRange);
	instance_create_depth(1000,1700-100,-1700,obj_ch_dl_deathQueenZeria);
	instance_create_depth(1000+75,1700+75,-1700,obj_ch_dl_deathGeneralZarodil);
	instance_create_depth(1000+75,1700+75,-1700,obj_deathScythe_ch);
	instance_create_depth(1000-75,1700+75,-1700,obj_ch_dl_deathKingZarok);
	if (global.musicOn == true)
	{
		audio_play_sound(snd_boss_lastFight,Prioity.Normal,true);
	}
}
if (instance_exists(obj_ch_dl_deathQueenZeria) == false && instance_exists(obj_ch_dl_deathKingZarok) == false && instance_exists(obj_ch_dl_deathGeneralZarodil) == false && summonedBoss == false)
{
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	global.playerMoney += 12000;
	global.lordsReward = 15000;
	global.playerLevel += 1;
	global.hasSlainDeathKingZarok = true;
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		
	}
}
