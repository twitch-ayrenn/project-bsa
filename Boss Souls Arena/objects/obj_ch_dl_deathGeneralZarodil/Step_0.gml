/// @description Insert description here
// You can write your code in this editorif (x < obj_player.x){sizeX = -wispSize;}
if (x < obj_player.x){sizeX = bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y-5;
image_alpha = 0.85;
global.dgzScytheDamage =  (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
global.dszProjectileAttacks = (40 + obj_player.hp*0.08)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
//
image_alpha = 0.80;
image_blend = make_color_rgb(255,150,150);
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
				audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.2;
				global.spinTimes = 4;
			}
			if (chooseAttack == GeneralAttacks.TpAttack)
			{
				sprite_index = spr_deathGeneral_walking_teleport;
				generalSpeed = 0.5;
			}
			if (chooseAttack == GeneralAttacks.Cone_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cone;
				generalSpeed = 2;
			}
			alarm[0] = (1.7)*30*global.dLAbilityNerf;
			alarm[1] = (5.2)*30*global.dLAbilityNerf;
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
				audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.2;
				global.spinTimes = 5;
			}
			if (chooseAttack == GeneralAttacks.Cross_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cross;
				generalSpeed = 1.5;
			}
			if (chooseAttack == GeneralAttacks.Cirkle_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cirkle;		
				generalSpeed = 2.5;
			}
			alarm[0] = (1.7)*30*global.dLAbilityNerf;
			alarm[1] = (5.2)*30*global.dLAbilityNerf;
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
				audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.6;
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
				generalSpeed = 1;
			}
			alarm[0] = (1.7)*30*global.dLAbilityNerf;
			alarm[1] = (5.2)*30*global.dLAbilityNerf;
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
				audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
			}
			if (chooseAttack == GeneralAttacks.ScytheAttacks)
			{
				sprite_index = spr_deathGeneral_walking_scythe;
				generalSpeed = 3.6;
				global.spinTimes = 8;
			}
			if (chooseAttack == GeneralAttacks.TpAttack)
			{
				sprite_index = spr_deathGeneral_walking_teleport;	
				generalSpeed = 1.5;
			}
			if (chooseAttack == GeneralAttacks.Cone_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cone;
				generalSpeed = 2;
			}
			if (chooseAttack == GeneralAttacks.Cross_Attack)
			{
				sprite_index = spr_deathGeneral_walking_cross;	
				generalSpeed = 0.5;
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
				generalSpeed = 1;
			}
			alarm[0] = (1.7)*30*global.dLAbilityNerf;
			alarm[1] = (5.2)*30*global.dLAbilityNerf;
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
	var bossDeathText = bossDeath;
	var bossText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossText.color = c_gray;
	bossText.text = bossDeathText;
	//reward
	global.playerMoney += 1000;
	if (global.soundOn == true)
	{
		//audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}
	//boss
	if (instance_exists(obj_deathScythe_ch)){with(obj_deathScythe_ch){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}