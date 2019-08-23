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
global.dgzScytheDamage =  (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/75));
global.dszProjectileAttacks = (40 + obj_player.hp*0.08)*(1 +(global.playerLevel/75));
//
//fases
if  (doAttacks == true)
{
	//step
	move_towards_point(obj_player.x,obj_player.y,generalSpeed);
	if (phase == 1)
	{
		if(chooseAnAttack == true)
		{
			chooseAnAttack = false;
			globalvar chooseAttack; 
			chooseAttack = choose(
				GeneralAttacks.ScytheAttacks,
				GeneralAttacks.TpAttack,
				GeneralAttacks.Cone_Attack,
			)
			if (global.soundOn == true)
			{
				//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3;
				global.spinTimes = 4;
			}
			if (chooseAttack == GeneralAttacks.TpAttack)
			{
				sprite_index = spr_deathGeneral_walking_teleport;		
			}
			if (chooseAttack == GeneralAttacks.Cone_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cone;
				generalSpeed = 1.5;
			}
			alarm[0] = (1.7)*30;
			alarm[1] = (5.2)*30;
		}
	}
	if (phase == 2)
	{
		if(chooseAnAttack == true)
		{
			chooseAnAttack = false;
			globalvar chooseAttack; 
			chooseAttack = choose(
				GeneralAttacks.ScytheAttacks,
				GeneralAttacks.Cross_Attack,
				GeneralAttacks.Cirkle_Attack,
			)
			if (global.soundOn == true)
			{
				//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3;
				global.spinTimes = 5;
			}
			if (chooseAttack == GeneralAttacks.Cross_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cross;		
			}
			if (chooseAttack == GeneralAttacks.Cirkle_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cirkle;		
				generalSpeed = 2;
			}
			alarm[0] = (1.7)*30;
			alarm[1] = (5.2)*30;
		}
	}
	if (phase == 3)
	{
		if(chooseAnAttack == true)
		{
			chooseAnAttack = false;
			globalvar chooseAttack; 
			chooseAttack = choose(
				GeneralAttacks.ScytheAttacks,
				GeneralAttacks.Taunt,
				GeneralAttacks.Shoot_Attack,
			)
			if (global.soundOn == true)
			{
				//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.5;
				global.spinTimes = 6;
			}
			if (chooseAttack == GeneralAttacks.Taunt)
			{
				sprite_index = spr_deathGeneral_walking_taunt;
				generalSpeed = 0.5;
			}
			if (chooseAttack == GeneralAttacks.Shoot_Attack)
			{
				sprite_index = spr_deathGeneral_walking_shooting;
				generalSpeed = 0.5;
			}
			alarm[0] = (1.7)*30;
			alarm[1] = (5.2)*30;
		}
	}
	if (phase == 4)
	{
		if(chooseAnAttack == true)
		{
			chooseAnAttack = false;
			globalvar chooseAttack; 
			chooseAttack = choose(
				GeneralAttacks.ScytheAttacks,
				GeneralAttacks.TpAttack,
				GeneralAttacks.Cone_Attack,
				GeneralAttacks.Cross_Attack,
				GeneralAttacks.Cirkle_Attack,
				GeneralAttacks.Taunt,
				GeneralAttacks.Shoot_Attack,
			)
			if (global.soundOn == true)
			{
				//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.5;
				global.spinTimes = 8;
			}
			if (chooseAttack == GeneralAttacks.TpAttack)
			{
				sprite_index = spr_deathGeneral_walking_teleport;	
			}
			if (chooseAttack == GeneralAttacks.Cone_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cone;
				generalSpeed = 1.5;
			}
			if (chooseAttack == GeneralAttacks.Cross_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cross;		
			}
			if (chooseAttack == GeneralAttacks.Cirkle_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cirkle;		
				generalSpeed = 2;
			}
			if (chooseAttack == GeneralAttacks.Taunt)
			{
				sprite_index = spr_deathGeneral_walking_taunt;
				generalSpeed = 0.5;
			}
			if (chooseAttack == GeneralAttacks.Shoot_Attack)
			{
				sprite_index = spr_deathGeneral_walking_shooting;
				generalSpeed = 0.5;
			}
			alarm[0] = (1.7)*30;
			alarm[1] = (5.2)*30;
		}
	}
	if (minigun == true && minigunBullets > 0)
	{
		minigun = false;
		minigunBullets -= 1;
		
		var scythe = instance_create_depth(x,y,1,obj_deathSword);
		scythe.direction = point_direction(x,y,obj_player.x,obj_player.y);
		scythe.speed = 6.5;
		
		alarm[2] = miniGunFirerate;
	}
}
if (phase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase1Hp;
		maxHp = hp;
		
	}
}
if (phase == 1 && hp <= 0)
{
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	oneTimeVars = true;
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
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.deathGeneralZarodilReward = 1000;
	global.playerMoney += 1000;
}
if (phase == 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase2Hp;
		maxHp = hp;
	}
}
if (phase == 2 && hp <= 0)
{
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	oneTimeVars = true;
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
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.deathGeneralZarodilReward = 2000;
	global.playerMoney += 1000;
}
if (phase == 3)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase3Hp;
		maxHp = hp;
	}
}
if (phase == 3 && hp <= 0)
{
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	oneTimeVars = true;
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
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.deathGeneralZarodilReward = 3000;
	global.playerMoney += 1000;
}
if (phase == 4)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase4Hp;
		maxHp = hp;
	}
}
if (phase == 4 && hp <= 0)
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
	//reward
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		if (chosenClass == Class.The_Assasin){global.assasinGeneral = true;}
		if (chosenClass == Class.The_Warrior){global.warriorGeneral = true;}
		if (chosenClass == Class.The_Mage){global.mageGeneral = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopGeneral = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodGeneral = true;}
	}
	if (global.hasSlainDeathGeneralZarodil == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.deathGeneralZarodilReward = 5000;
	global.playerMoney += 2000;
	global.hasSlainDeathGeneralZarodil = true;
	global.playerLevel += 1;
	if (global.soundOn == true)
	{
		//audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		if (chosenClass == Class.The_Assasin){global.assasinGeneral = true;}
		if (chosenClass == Class.The_Warrior){global.warriorGeneral = true;}
		if (chosenClass == Class.The_Mage){global.mageGeneral = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopGeneral = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodGeneral = true;}
	}
	//boss
	if (instance_exists(obj_deathScythe)){with(obj_deathScythe){instance_destroy();}}
	if (instance_exists(obj_deathScythe)){with(obj_deathScythe){instance_destroy();}}
	if (instance_exists(obj_deathGeneralZarodilRange)){with(obj_deathGeneralZarodilRange){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}