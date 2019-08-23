/// @description Insert description here
// You can write your code in this editor
image_xscale = size;
image_yscale = size;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
phase1Damage = (12 + obj_player.hp*0.024)*(1 +(global.playerLevel/50))*global.dD;
phase2Damage = (15 + obj_player.hp*0.03)*(1 +(global.playerLevel/50))*global.dD;
phase3Damage = (18 + obj_player.hp*0.036)*(1 +(global.playerLevel/75))*global.dD;
phase4Damage = (15 + obj_player.hp*0.075)*(1 +(global.playerLevel/75))*global.dD;
//phase 1
if (phase == 1){damage = phase1Damage;}
if (phase >= 1)
{
	if (oneTimeVars == true && phase == 1)
	{
		oneTimeVars = false;
		hp = phase1Hp
		maxHp = hp;
		damage = phase1Damage;
	}
	if (phase1DoShot == true)
	{
		phase1DoShot = false;
		
		alarm[0] = phase1ShotTime;
	}
	if(phase1DoDoubleShot == true)
	{
		phase1DoDoubleShot = false;
		
		alarm[1] = phase1DoubleTime;
	}
	if (phase1DoTripleShot == true)
	{
		phase1DoTripleShot = false;
		
		alarm[2] = phase1TripleShotTime  	
	}
}
if (phase == 1 && hp <= 0)
{
	phase = 2;
	oneTimeVars = true;
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
	//rewardShit
	global.playerMoney += 200;
	global.theFlameGateReward += 200;
}
//phase 2
if (phase == 2){damage = phase2Damage;}
if (phase >= 2)
{
	if (oneTimeVars == true && phase == 2)
	{
		oneTimeVars = false;
		hp = phase2Hp
		maxHp = hp;
		//instance_create_depth(x,y,-y-1000,obj_flameGate_range_moving);
		with (obj_flameGate_range){grow = true;}
		damage = phase2Damage;
	}
}
if (phase == 2 && hp <= 0)
{

	phase = 3;
	oneTimeVars = true;
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
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//rewardShit
	global.playerMoney += 200;
	global.theFlameGateReward += 200;
}
//phase 3
if (phase == 3){damage = phase3Damage;}
if (phase >= 3)
{
	if (oneTimeVars == true && phase == 3)
	{
		oneTimeVars = false;
		hp = phase3Hp
		maxHp = hp;
		damage = phase3Damage;
		var portal = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal2 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal3 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
	}
	if (phase3SpawnPortals == true)
	{
		phase3SpawnPortals = false;
		
		alarm[3] = phase3SpawnPortalsTime;
	}
}
if (phase == 3 && hp <= 0)
{

	phase = 4;
	oneTimeVars = true;
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
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//rewardShit
	global.playerMoney += 200;
	global.theFlameGateReward += 200;
}
//phase4
if (phase == 4){damage = phase4Damage;}
if (phase >= 4)
{	
	if (oneTimeVars == true && phase == 4)
	{
		oneTimeVars = false;
		hp = phase4Hp
		maxHp = hp;
		damage = phase4Damage;
		var portal = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal2 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal3 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal4 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
		
		var portal5 = instance_create_depth(x+choose(irandom_range(-50,-35),irandom_range(35,50)),y-irandom_range(20,70),-y,obj_ads_portal);
	}
	if (phase4DoOneShot == true)
	{
		with (obj_camera){shake_remain += 3;}
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		phase4DoOneShot = false;
		var shot = instance_create_depth(x,y,depth-1,obj_flameGateOneShot);
			shot.direction = point_direction(x,y,obj_player.x,obj_player.y);
			shot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
			shot.image_xscale = 2;
			shot.image_yscale = 2;
			shot.damage = damage;
			shot.speed = 7;
	}
}
if (phase == 4 && hp <= 0)
{
	//player shit
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
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
	//rewardShit
	if (global.hasSlainTheFlameGate == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.playerMoney += 800;
	global.theFlameGateReward = 1400;
	global.playerLevel += 1;
	global.hasSlainTheFlameGate = true;
	if (instance_exists(obj_flameGate_range)){instance_destroy(obj_flameGate_range)}
	if (instance_exists(obj_flameGate_range_moving)){instance_destroy(obj_flameGate_range_moving)}
	if (instance_exists(obj_flameGateShot)){instance_destroy(obj_flameGateShot)}
	if (instance_exists(obj_flameGateOneShot)){instance_destroy(obj_flameGateOneShot)}
	if (instance_exists(obj_ads_portal)){instance_destroy(obj_ads_portal)}
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		if (chosenClass == Class.The_Assasin){global.assasinGate = true;}
		if (chosenClass == Class.The_Warrior){global.warriorGate = true;}
		if (chosenClass == Class.The_Mage){global.mageGate = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopGate = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodGate = true;}
	}
	instance_destroy();
}