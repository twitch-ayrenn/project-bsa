/// @description Insert description here
// vars
depth = -y;
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
image_xscale = sizeX;
image_yscale = sizeY;
fase1Damage = (2 + obj_player.hp*0.02)*(1 +(global.playerLevel/60))*global.dD;
fase2Damage = (2.5 + obj_player.hp*0.025)*(1 +(global.playerLevel/60))*global.dD;
fase3Damage = (20 + obj_player.hp*0.2)*(1 +(global.playerLevel/60))*global.dD;
//fase 1
if (fase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase1Hp;
		maxHp = hp;
	}
	move_towards_point(obj_player.x,obj_player.y,fase1Speed);
	if (fase1Shoot == true)
	{
		fase1Shoot = false;
		var blodKlot = instance_create_depth(x,y,1,obj_klot);
		blodKlot.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.speed = 4 + fase1Speed;
		blodKlot.color = c_maroon;
		blodKlot.damage = fase1Damage;
		blodKlot.image_xscale = 1;
		blodKlot.image_yscale = 1;
		alarm[0] = fase1Firerate;
	}
	if (fase1DoCirkle == true)
	{
		fase1DoCirkle = false;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_zombieAttack,Prioity.AboveNormal,false);	
		}
		alarm[1] = fase1CirkleTime;
	}
}
if (hp <= 0 && fase == 1)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
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
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	bossSize = 1.8;
	sizeX = 1.8;
	sizeY = 1.8;	
	oneTimeVars = true;
	fase = 2;
	sprite_index = spr_boss_theFatZombie_poison;
	instance_destroy(obj_theFatZombieRange_red);
	instance_create_depth(obj_theFatPrinceStatue.x,obj_theFatPrinceStatue.y,98,obj_theFatZombieRange_green)
	//reward shit
	global.theFatZombieReward = 50;
	global.playerMoney += 50;
}
if (fase == 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase2Hp;
		maxHp = hp;
	}
	move_towards_point(obj_player.x,obj_player.y,fase2Speed);
	if (fase2Shoot == true)
	{
		fase2Shoot = false;
		var blodKlot = instance_create_depth(x,y,1,obj_klot);
		blodKlot.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		blodKlot.speed = 4 + fase2Speed;
		blodKlot.color = c_lime;
		blodKlot.damage = fase2Damage;
		blodKlot.image_xscale = 1.2;
		blodKlot.image_yscale = 1.2;
		alarm[0] = fase2Firerate;
	}
	if (fase2DoCirkle == true)
	{
		fase2DoCirkle = false;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_zombieAttack,Prioity.AboveNormal,false);	
		}
		alarm[1] = fase2CirkleTime;
	}
}
if (hp <= 0 && fase == 2)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
	}
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
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
	//
	var bossDeathText = bossDeath;
	var bossText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossText.color = c_gray;
	bossText.text = bossDeathText;
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	//boss shit
	bossSize = 2;
	sizeX = 2;
	sizeY = 2;	
	if (global.zombieFaseAmount >= 3)
	{
		fase = 3;
		oneTimeVars = true;
	}
	if (global.zombieFaseAmount == 2)
	{
		if (global.hasSlainFatZombiePhase2 == false && global.dD < 1){global.dD = 1;}
		if (global.dD >= 1){global.dD += 0.04;}
		global.theFatZombieReward = 200;
		global.playerMoney += 150;
		global.hasSlainFatZombiePhase2 = true;
		global.playerLevel += 1;
		if (instance_exists(obj_theFatZombieRange_green))	{with(obj_theFatZombieRange_green){instance_destroy();}}
		if (instance_exists(obj_klot))	{with(obj_klot){instance_destroy();}}
		if (instance_exists(obj_gooGround))	{with(obj_gooGround){instance_destroy();}}
		with(gameMaster)
		{
			menu = Menues.BossSlain;
			
			//save
			game_save(global.saveFile);
			if (chosenClass == Class.The_Assasin){global.assasinZombie = true;}
			if (chosenClass == Class.The_Warrior){global.warriorZombie = true;}
			if (chosenClass == Class.The_Mage){global.mageZombie = true;}
			if (chosenClass == Class.The_Shopkeeper){global.shopZombie = true;}
			if (chosenClass == Class.The_BloodKnight){global.bloodZombie = true;}
		}
		var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
		instance_destroy();
	}
	//reward shit
}