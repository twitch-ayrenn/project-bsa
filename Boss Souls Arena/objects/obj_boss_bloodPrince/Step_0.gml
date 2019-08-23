/// @description Insert description here
// You can write your code in this editor
depth = -y;
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
fase2Damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/100))*global.dD;
fase3Damage = (6 + obj_player.hp*0.012)*(1 +(global.playerLevel/100))*global.dD;
fase4Damage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/100))*global.dD;
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
if (fase == 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase2Hp;
		maxHp = hp;
	}
	//step
	if (distance_to_point(obj_player.x + pointX,obj_player.y + pointY) > 6)
	{
		move_towards_point(obj_player.x + pointX,obj_player.y + pointY,3);	
	}
	if (changeLocation == true)
	{
		changeLocation = false;
		
		alarm[1] = (5)*30;
	}
	if (fase2Shoot == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		fase2Shoot = false;
		var typeOfBat = choose(1,2,2,3,4);
		if (typeOfBat == 1)
		{
			var bigBat = instance_create_depth(x,y,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;
		}
		if (typeOfBat == 2)
		{
			var normalBat = instance_create_depth(x,y,1,obj_ads_bloodBatNormal);
			normalBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			normalBat.speed = 4; 
			normalBat.damage = fase2Damage;
		}
		if (typeOfBat == 3)
		{
			var returnBat = instance_create_depth(x,y,1,obj_ads_bloodBatRetruning);
			returnBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			returnBat.speed = 3; 
			returnBat.damage = fase2Damage;
		}
		if (typeOfBat == 4)
		{
			var bigBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
			bigBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			bigBat.speed = 6; 
			bigBat.damage = fase2Damage;
		}
		alarm[0] = fase2Firerate;
		fase2Firerate = (1)*choose(20,30,40);
	}
}	
if (hp <= 0 && fase == 2)
{
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
	//boss stuffs
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
	sizeX = 1.3;
	sizeY = 1.3;
	bossSize = 1.3;
	repeat(2)
	{		var bigBat = instance_create_depth(x+300,y,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x-300,y,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x,y+300,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x,y-300,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	oneTimeVars = true;
	fase = 3;
	//reward shits
	global.theBloodPrinceReward = 100;
	global.playerMoney += 100;
}
if (fase == 3)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase3Hp;
		maxHp = hp;
	}
	if (distance_to_point(obj_player.x + pointX,obj_player.y + pointY) > 6)
	{
		move_towards_point(obj_player.x + pointX,obj_player.y + pointY,3);	
	}
	if (changeLocation == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		changeLocation = false;
		alarm[1] = (4)*30;
	}
	if (fase3Shoot == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		fase3Shoot = false;
		var typeOfBat = choose(1,2,3,4);
		if (typeOfBat == 1)
		{
			if (obj_player.class != Class.The_BloodKnight)
			{
				var bigBat = instance_create_depth(x,y,1,obj_ads_bloodBatBig);
				bigBat.damage = fase3Damage;
			}
			if (obj_player.class == Class.The_BloodKnight)
			{
				var fastBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
				fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
				fastBat.speed = 6; 
				fastBat.damage = fase3Damage;
			}
		}
		if (typeOfBat == 2)
		{
			var normalBat = instance_create_depth(x,y,1,obj_ads_bloodBatNormal);
			normalBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			normalBat.speed = 4; 
			normalBat.damage = fase3Damage;
		}
		if (typeOfBat == 3)
		{
			var returnBat = instance_create_depth(x,y,1,obj_ads_bloodBatRetruning);
			returnBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			returnBat.speed = 3; 
			returnBat.damage = fase3Damage;
		}
		if (typeOfBat == 4)
		{
			var fastBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
			fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			fastBat.speed = 6; 
			fastBat.damage = fase3Damage;
		}
		alarm[0] = fase3Firerate;
		fase3Firerate = (1)*choose(20,30,40);
	}
	if (fase3DoTeleport == true)
	{
		fase3DoTeleport = false;
		
		alarm[2] = fase3Teleport;
		fase3Teleport = (3)*choose(20,30,40);
	}
}
if (hp <= 0 && fase == 3)
{
	//player things
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss things
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
	sizeX = 1.4;
	sizeY = 1.4;
	bossSize = 1.4;
	repeat(2)
	{		var bigBat = instance_create_depth(x+300,y,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x-300,y,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x,y+300,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	repeat(2)
	{		var bigBat = instance_create_depth(x,y-300,1,obj_ads_bloodBatBig);
			bigBat.damage = fase2Damage;	}
	oneTimeVars = true;
	fase = 4;
	//reward time
	global.theBloodPrinceReward = 200;
	global.playerMoney += 100;
}
if (fase == 4)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase3Hp;
		maxHp = hp;
	}
	if (distance_to_point(obj_player.x + pointX,obj_player.y + pointY) > 6)
	{
		move_towards_point(obj_player.x + pointX,obj_player.y + pointY,3);	
	}
	if (changeLocation == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		changeLocation = false;
		alarm[1] = (3)*30;
	}
	if (fase4Shoot == true)
	{
		if (global.soundOn == true)
		{
			audio_play_sound(snd_batProjectile,Prioity.Normal,false);
		}
		fase4Shoot = false;
		var typeOfBat = choose(1,3,4);
		if (typeOfBat == 1)
		{
			if (obj_player.class != Class.The_BloodKnight)
			{
				var bigBat = instance_create_depth(x,y,1,obj_ads_bloodBatBig);
				bigBat.damage = fase3Damage;
			}
			if (obj_player.class == Class.The_BloodKnight)
			{
				var fastBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
				fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
				fastBat.speed = 6; 
				fastBat.damage = fase3Damage;
			}
		}
		if (typeOfBat == 3)
		{
			var returnBat = instance_create_depth(x,y,1,obj_ads_bloodBatRetruning);
			returnBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			returnBat.speed = 3; 
			returnBat.damage = fase4Damage;
		}
		if (typeOfBat == 4)
		{
			var fastBat = instance_create_depth(x,y,1,obj_ads_bloodBatFast);
			fastBat.direction = point_direction(x,y,obj_player.x,obj_player.y);
			fastBat.speed = 6; 
			fastBat.damage = fase4Damage;
		}
		alarm[0] = fase4Firerate;
		fase4Firerate = (0.7)*choose(20,30,40);
	}
	if (fase4DoTeleport == true)
	{
		fase4DoTeleport = false;
		
		alarm[2] = fase4Teleport;
		fase4Teleport = (2.5)*choose(20,30,40);
	}
}
if (hp <= 0 && fase == 4)
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
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		if (chosenClass == Class.The_Assasin){global.assasinVampire = true;}
		if (chosenClass == Class.The_Warrior){global.warriorVampire = true;}
		if (chosenClass == Class.The_Mage){global.mageVampire = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopVampire = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodVampire = true;}
	}
	
	if (global.hasSlainTheBloodPrince == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.theBloodPrinceReward = 600;
	global.playerMoney += 400;
	global.hasSlainTheBloodPrince = true;
	global.playerLevel += 1;
	if (instance_exists(obj_ads_bloodBatBig))	{with (obj_ads_bloodBatBig){instance_destroy();}}
	if (instance_exists(obj_ads_bloodBatFast))	{with (obj_ads_bloodBatFast){instance_destroy();}}
	if (instance_exists(obj_ads_bloodBatNormal))	{with (obj_ads_bloodBatNormal){instance_destroy();}}
	if (instance_exists(obj_ads_bloodBatRetruning))	{with (obj_ads_bloodBatRetruning){instance_destroy();}}
	if (instance_exists(obj_bloodPrinceRange))	{with (obj_bloodPrinceRange){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}