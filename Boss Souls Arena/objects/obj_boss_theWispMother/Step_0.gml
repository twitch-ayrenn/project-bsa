/// @description code
//stats
ttkStacks++;
if (ttkStacks >= (1)*30){ttkStacks = 0;timeToKill += 1;}
//fase1
fase1Damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/100))*global.dD;
fase2Damage = (6 + obj_player.hp*0.012)*(1 +(global.playerLevel/100))*global.dD;
fase3Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/100))*global.dD;
fase4Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/100))*global.dD;
if (x < obj_player.x){sizeX = -wispSize;}
if (x > obj_player.x){sizeX = wispSize;}
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y-100;
image_alpha = 0.75;
//fases
if  (fase == 1)
{
	//vars	
	faseColor = c_aqua;
	image_blend = faseColor;
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase1Hp;
		maxHp = hp;
		instance_create_depth(x,y,1,obj_wispRange_blue);
	}
	//step
	move_towards_point(obj_player.x,obj_player.y,1);
	if (fase1Shoot == true)
	{
		fase1Shoot = false;
		var wispShot = instance_create_depth(x,y,1,obj_wispShot);
		wispShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
		wispShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		wispShot.speed = 5;
		wispShot.color = c_aqua;
		wispShot.damage = fase1Damage;
		wispShot.image_xscale = 1.4;
		wispShot.image_yscale = 1.4;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[0] = fase1Firerate;
		fase1Firerate = (1)*choose(20,30,40);
	}
	if (fase1Summon == true)
	{
		fase1Summon = false;
		var wisp = instance_create_depth(x+choose(-30,30,0),y+choose(-30,30,0),1,obj_ads_wisp);
		wisp.color = choose(c_red,c_aqua,c_purple,c_lime);
		alarm[1] = fase1SummonTime;
		fase1SummonTime = (4)*choose(20,30,40);
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
	wispSize = 1.8;
	sizeX = 1.8;
	sizeY = 1.8;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_wisp);
	wisp1.color = c_red;
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_wisp);
	wisp2.color = c_red;
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_wisp);
	wisp3.color = c_red;
	var wisp4 = instance_create_depth(x-30,y,depth,obj_ads_wisp);
	wisp4.color = c_red;
	oneTimeVars = true;
	fase = 2;
	//reward shit
	global.theWispMotherReward = 50;
	global.playerMoney += 50;
}
if (fase == 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase2Hp;
		maxHp = hp;
		instance_create_depth(x,y,1,obj_wispRange_red);
		
	}
	upDownY += upDownYIncrease;
	if (upDownY >= 200)
	{
		upDownYIncrease = -5;
	}
	if (upDownY <= -200)
	{
		upDownYIncrease = 5;
	}
	faseColor = c_red;
	image_blend = faseColor;
	if (room == rm_theGreatCementary)
	{
		if (obj_player.y >= 2300)
		{
			move_towards_point(obj_player.x + upDownY,obj_player.y-80,3);
		}
		if (obj_player.y < 2300)
		{
			move_towards_point(obj_player.x + upDownY,obj_player.y+80,3);
		}
		
	}
	if (room != rm_theGreatCementary)
	{
		move_towards_point(obj_player.x + upDownY,obj_player.y-70,3);	
	}
	if (fase2Shoot == true)
	{
		fase2Shoot = false;
		var wispShot = instance_create_depth(x,y,1,obj_wispShot);
		wispShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
		wispShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		wispShot.speed = 5;
		wispShot.color = c_red;
		wispShot.image_xscale = 0.7;
		wispShot.image_yscale = 0.7;
		wispShot.damage = fase2Damage;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[0] = fase2Firerate;
		fase2Firerate = (1)*choose(20,30,40);
	}
	if (fase2DoBigShot == true)
	{
		fase2DoBigShot = false;
		//kod i alarm för delay
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[2] = fase2BigShot;
	}
	if (fase2DoCombo == true)
	{
		fase2DoCombo = false;		
		//kod i alarm för delay
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[3] = fase2Combo;
	}
}
if (hp <= 0 && fase == 2)
{
	//player stuff
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
	//boss stuff
	wispSize = 1.5;
	sizeX = 1.5;
	sizeY = 1.5;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_wisp);
	wisp1.color = c_purple;
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_wisp);
	wisp2.color = c_purple;
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_wisp);
	wisp3.color = c_purple;
	instance_create_depth(x,y,1,obj_wispRange);
	oneTimeVars = true;
	fase = 3;
	global.theWispMotherReward = 100;
	global.playerMoney += 50;

}
if (fase == 3)
{
	if (distance_to_object(obj_player) >= 200*0.65)
	{
		with(obj_player)
		{
			hp -= 1;
			var damageToTarget = 1;
			var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			damageText.color = c_maroon;
			damageText.text = damageToTarget;
		}
	}
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase3Hp;
		maxHp = hp;
	}
	faseColor = c_purple;
	image_blend = faseColor;
	move_towards_point(obj_player.x,obj_player.y,2);
	if (hp >= 150){fase3CirkelShotAmount = 10;}
	if (hp >= 100 && hp < 150){fase3CirkelShotAmount = 12;}
	if (hp >= 50 && hp < 100){fase3CirkelShotAmount = 14;}
	if (hp >= 0 && hp < 50){fase3CirkelShotAmount = 16;}
	if (fase3DoCirkleShot == true)
	{
		fase3DoCirkleShot = false;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[4] = fase3CirkleShot;
	}
}
if (hp <= 0 && fase == 3)
{
	//player stuff
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
	//boss stuff
	instance_create_depth(x,y,1,obj_wispRange_green);
	with(obj_wispRange){instance_destroy();}
	wispSize = 1.2;
	sizeX = 1.2;
	sizeY = 1.2;	
	var wisp1 = instance_create_depth(x,y+30,depth,obj_ads_wisp);
	wisp1.color = c_lime;
	var wisp2 = instance_create_depth(x,y-30,depth,obj_ads_wisp);
	wisp2.color = c_lime;
	var wisp3 = instance_create_depth(x+30,y,depth,obj_ads_wisp);
	wisp3.color = c_lime;
	oneTimeVars = true;
	fase = 4;
	global.theWispMotherReward = 150;
	global.playerMoney += 50;
}
if (fase == 4)
{
	if (distance_to_object(obj_player) >= 200*0.7)
	{
		with(obj_player)
		{
			hp -= 2;
			var damageToTarget = 2;
			var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			damageText.color = c_maroon;
			damageText.text = damageToTarget;
		}
	}
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase4Hp;
		maxHp = hp;
	}
	faseColor = c_lime;
	image_blend = faseColor;
	move_towards_point(obj_player.x,obj_player.y,1);
	if (fase4DoCirkelShot == true)
	{
		
		fase4DoCirkelShot = false;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		//
		alarm[6] = fase4CirkleShot;
	}
	if (fase4DoBigShot == true)
	{
		fase4DoBigShot = false;
		with (obj_camera){shake_remain += 2;}
		var bigShot = instance_create_depth(x,y,1,obj_wispShot);
		bigShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
		bigShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		bigShot.speed = 6;
		bigShot.color = c_green;
		bigShot.image_xscale = 1.2;
		bigShot.image_yscale = 1.2;
		bigShot.damage = fase4Damage*2;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_wispShots,Prioity.Small,false);
		}
		alarm[7] = fase4BigShot;
	}
	if (fase4Summon == true)
	{
		fase4Summon = false;
		var wisp = instance_create_depth(x+choose(-30,30,0),y+choose(-30,30,0),1,obj_ads_wisp);
		wisp.color = choose(c_red,c_aqua,c_purple);
		alarm[5] = fase4SummonTime;
		fase4SummonTime = (3)*choose(25,30,45);
	}
}
if (hp <= 0 && fase == 4)
{	
	with (obj_camera){shake_remain += 2;}
	if (global.musicOn == true)
	{
		audio_play_sound(snd_victorySong,Prioity.VeryHigh,false);
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
	if (global.hasSlainTheWispMother == false && global.dD < 1){global.dD = 1;}
	if (global.dD >= 1){global.dD += 0.04;}
	global.theWispMotherReward = 300;
	global.playerMoney += 150;
	global.hasSlainTheWispMother = true;
	global.playerLevel += 1;
	if (instance_exists(obj_ads_wisp))	{with(obj_ads_wisp){instance_destroy();}}
	if (instance_exists(obj_wispRange_green))	{with(obj_wispRange_green){instance_destroy();}}
	if (instance_exists(obj_wispShot))	{with(obj_wispShot){instance_destroy();}}
	var bossDeathText = bossDeath;
	var bossText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossText.color = c_gray;
	bossText.text = bossDeathText;
	var playerWinText = global.playerLineVictory;
	var playerText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	playerText.color = global.playerTextColor;
	playerText.text = playerWinText;
	with(gameMaster)
	{
		menu = Menues.BossSlain;
		//save
		game_save(global.saveFile);
		//proggress
		if (chosenClass == Class.The_Assasin){global.assasinMother = true;}
		if (chosenClass == Class.The_Warrior){global.warriorMother = true;}
		if (chosenClass == Class.The_Mage){global.mageMother = true;}
		if (chosenClass == Class.The_Shopkeeper){global.shopMother = true;}
		if (chosenClass == Class.The_BloodKnight){global.bloodMother = true;}
	}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
		deadBoss.image_blend = image_blend;
	instance_destroy();
}



