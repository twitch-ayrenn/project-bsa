/// @description Insert description here
// You can write your code in this editor
if (x < obj_player.x){sizeX = -wispSize;}
if (x > obj_player.x){sizeX = wispSize;}
image_xscale = sizeX;
image_yscale = sizeY;;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y-100;
image_alpha = 0.75;
move_towards_point(obj_player.x,obj_player.y,wispSpeed);
phase1Damage = (15 + obj_player.hp*0.035)*(1 +(global.playerLevel/50))*global.dD;
phase2Damage = (20 + obj_player.hp*0.045)*(1 +(global.playerLevel/50))*global.dD;
phase3Damage = (22.5 + obj_player.hp*0.05)*(1 +(global.playerLevel/50))*global.dD;
phase4Damage = (25 + obj_player.hp*0.06)*(1 +(global.playerLevel/50))*global.dD;
if (summonWisp == true)
{
	summonWisp = false;
	
	alarm[3] = summonWispTime;
}
if  (phase == 1)
{
	//vars	
	image_blend = phase1Color;
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase1Hp;
		maxHp = hp;
		
		instance_create_depth(x,y,1,obj_theSoulWisp_range);
		summonWispTime = phase1SummonWispTime;
		wispSpeed = phase1Speed;
	}
	damage = phase1Damage;
	if (phase1DoTripleShot == true)
	{
		phase1DoTripleShot = false;
		
		alarm[0] = phase1TripleShotTime;
	}
	if (phase1DoQuadraShot == true)
	{
		phase1DoQuadraShot = false;
		
		alarm[1] = phase1QudraShotTime;
	}
	if (phase1DoHexaShot == true)
	{
		phase1DoHexaShot = false;
		with (obj_camera){shake_remain += 2;}
		alarm[2] = phase1HexaShotTime;
	}
}
if (hp <= 0 && phase == 1)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	wispSize = 1.6;
	sizeX = 1.6;
	sizeY = 1.6;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_soulWisp);
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_soulWisp);
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_soulWisp);
	var wisp4 = instance_create_depth(x-30,y,depth,obj_ads_soulWisp);
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.theSoulWispReward = 400;
	global.playerMoney += 400;
}
if  (phase == 2)
{
	//vars	
	image_blend = phase2Color;
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase2Hp;
		maxHp = hp;
		
		with (obj_theSoulWisp_range){image_blend = obj_boss_theSoulWisp.phase2Color;}
		summonWispTime = phase2SummonWispTime;
		wispSpeed = phase2Speed;
	}
	damage = phase2Damage;
	if (phase2DoCirkleShot == true)
	{
		phase2DoCirkleShot = false;
		
		alarm[4] = phase2CirkleShotTime;
	}
}
if (hp <= 0 && phase == 2)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	wispSize = 1.7;
	sizeX = 1.7;
	sizeY = 1.7;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_soulWisp);
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_soulWisp);
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_soulWisp);
	var wisp4 = instance_create_depth(x-30,y,depth,obj_ads_soulWisp);
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.theSoulWispReward = 400;
	global.playerMoney += 400;
}
if  (phase == 3)
{
	//vars	
	image_blend = phase3Color;
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase3Hp;
		maxHp = hp;
		damage = phase3Damage;
		with (obj_theSoulWisp_range){image_blend = obj_boss_theSoulWisp.phase3Color;}
		summonWispTime = phase3SummonWispTime;
		wispSpeed = phase3Speed;
	}
	damage = phase3Damage;
	if (phase3SpawnGoo == true)
	{
		phase3SpawnGoo = false;
		
		alarm[5] = (0.35)*30;
	}
}
if (hp <= 0 && phase == 3)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	wispSize = 1.8;
	sizeX = 1.8;
	sizeY = 1.8;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_soulWisp);
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_soulWisp);
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_soulWisp);
	var wisp4 = instance_create_depth(x-30,y,depth,obj_ads_soulWisp);
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
	global.theSoulWispReward = 400;
	global.playerMoney += 400;
}
if  (phase == 4)
{
	//vars	
	image_blend = phase4Color;
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase4Hp;
		maxHp = hp;
		damage = phase4Damage;
		with (obj_theSoulWisp_range){image_blend = obj_boss_theSoulWisp.phase4Color;}
		if (instance_exists(obj_soulGround))
		{
			with (obj_soulGround)
			{
				var fifty = choose(0,1);
				if (fifty == 0)
				{
					instance_destroy();
				}
			}
		}
		summonWispTime = phase4SummonWispTime;
		wispSpeed = phase4Speed;
	}
	damage = phase4Damage;
	if (phase4DoTripleShot == true)
	{
		phase4DoTripleShot = false;
		
		alarm[0] = phase4TripleShotTime;
	}
	if (phase4DoQuadraShot == true)
	{
		phase4DoQuadraShot = false;
		
		alarm[1] = phase4QudraShotTime;
	}
	if (phase4DoHexaShot == true)
	{
		phase4DoHexaShot = false;
		
		alarm[2] = phase4HexaShotTime;
	}
	if (phase4DoCikrleShot == true)
	{
		phase4DoCikrleShot = false;
		
		alarm[4] = phase4CikrleShotTime;
	}
	if (phase4SpawnGoo == true)
	{
		phase4SpawnGoo = false;
		
		alarm[5] = (0.35)*30;
	}
}
if (phase == 4 && hp <= 0)
{
	//player shit
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
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
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
	//rewardShit
	if (global.hasSlainTheSoulWisp == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.playerMoney += 1450;
	global.theSoulWispReward = 2500;
	global.playerLevel += 1;
	global.hasSlainTheSoulWisp = true;
	if (instance_exists(obj_theSoulWisp_range)){instance_destroy(obj_theSoulWisp_range)}
	if (instance_exists(obj_soulGround)){instance_destroy(obj_soulGround)}
	if (instance_exists(obj_soulShot)){instance_destroy(obj_soulShot)}
	if (instance_exists(obj_ads_soulWisp)){instance_destroy(obj_ads_soulWisp)}
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		//
		if (chosenClass == Class.The_Assasin){global.assasinWisp = true;}
		if (chosenClass == Class.The_Warrior){global.warriorWisp = true;}
		if (chosenClass == Class.The_Mage){global.mageWisp = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopWisp = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodWisp = true;}
	}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
		deadBoss.image_blend = image_blend;
	instance_destroy();
}
