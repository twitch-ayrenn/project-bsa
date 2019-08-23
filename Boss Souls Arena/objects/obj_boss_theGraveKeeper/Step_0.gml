/// @description Insert description here
// You can write your code in this editorif (x < obj_player.x){sizeX = -wispSize;}
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y;
image_alpha = 0.85;
global.gkSpinDamage = (45 + obj_player.hp*0.09)*(1 +(global.playerLevel/100))*global.dD;
global.gkChaseDamage = (7 + obj_player.hp*0.014)*(1 +(global.playerLevel/100))*global.dD;
//
//fases
if  (fase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
	}
	//step
	move_towards_point(obj_player.x,obj_player.y,2);
	if(chooseAnAttack == true)
	{
		chooseAnAttack = false;
		globalvar chooseAttack; 
		chooseAttack = choose(
			Attacks.ScytheChase,
			Attacks.ScytheSpinTp,
			Attacks.ScytheCombo,
			Attacks.CrossScythe,
			Attacks.PlusScythe,
			Attacks.CirkleScythe,
		)
		if (global.soundOn == true)
		{
			audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
		}
		if (chooseAttack == Attacks.ScytheChase)
		{
			sprite_index = spr_boss_theGraveKeeper_yellow;
		}
		if (chooseAttack == Attacks.ScytheSpinTp)
		{
			sprite_index = spr_boss_theGraveKeeper_red;		
		}
		if (chooseAttack == Attacks.ScytheCombo)
		{
			sprite_index = spr_boss_theGraveKeeper_blue;	
		}
		if (chooseAttack == Attacks.CrossScythe)
		{
			sprite_index = spr_boss_theGraveKeeper_orange;		
		}
		if (chooseAttack == Attacks.PlusScythe)
		{
			sprite_index = spr_boss_theGraveKeeper_green;		
		}
		if (chooseAttack == Attacks.CirkleScythe)
		{
			sprite_index = spr_boss_theGraveKeeper_purple;
		}
		alarm[0] = (2)*30;
		alarm[1] = (5.5)*30;
	}
}
if (hp <= 0)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
	}
	var bossDeathText = bossDeath;
	var bossText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossText.color = c_gray;
	bossText.text = bossDeathText;
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.1;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 12;
		}
	}
	//reward
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		if (chosenClass == Class.The_Assasin){global.assasinKeeper = true;}
		if (chosenClass == Class.The_Warrior){global.warriorKeeper = true;}
		if (chosenClass == Class.The_Mage){global.mageKeeper = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopKeeper = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodKeeper = true;}
	}
	if (global.hasSlainTheGraveKeeper == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.theGravekeeperReward = 1000;
	global.playerMoney += 1000;
	global.hasSlainTheGraveKeeper = true;
	global.playerLevel += 1;
	if (global.soundOn == true)
	{
		audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}
	//boss
	if (instance_exists(obj_scythe)){with(obj_scythe){instance_destroy();}}
	if (instance_exists(obj_scythe_projectile)){with(obj_scythe_projectile){instance_destroy();}}
	if (instance_exists(obj_keeperRange)){with(obj_keeperRange){instance_destroy();}}
	if (instance_exists(obj_keeperRange_in)){with(obj_keeperRange_in){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}