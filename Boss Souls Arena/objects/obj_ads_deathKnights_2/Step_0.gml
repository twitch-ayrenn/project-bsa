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
global.dkScytheDamage =  (10 + obj_player.hp*0.010)*(1 +(global.playerLevel/50))*global.dD;
global.dkProjectileAttacks = (50 + obj_player.hp*0.1)*(1 +(global.playerLevel/50))*global.dD;
//
//fases
if  (doAttacks == true)
{
	//step
	move_towards_point(obj_player.x+15,obj_player.y+15,generalSpeed);
	if(chooseAnAttack == true)
	{
		chooseAnAttack = false;
		globalvar chooseAttack2; 
		chooseAttack2 = choose(
			GeneralAttacks.ScytheAttacks,
			GeneralAttacks.TpAttack,
			GeneralAttacks.Cone_Attack,
		)
		if (global.soundOn == true)
		{
			//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
		}
		if (chooseAttack1 == GeneralAttacks.ScytheAttacks)
		{
			sprite_index = spr_deathKinghts_scythe;
			generalSpeed = 3;
			global.spinTimes = 6;
		}
		if (chooseAttack2 == GeneralAttacks.TpAttack)
		{
			sprite_index = spr_deathKinghts_teleport;
		}
		if (chooseAttack2 == GeneralAttacks.Cone_Attack)
		{
			sprite_index = spr_deathKinghts_cone;
			generalSpeed = 1.4;
		}
		if (chooseAttack2 == GeneralAttacks.Cirkle_Attack)
		{
			sprite_index = spr_deathKinghts_cirkle;
			generalSpeed = 1.8;
		}
		alarm[0] = (1.7)*30;
		alarm[1] = (5.2)*30;
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
		global.damage *= 1.02;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 3;
		}
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	if (global.soundOn == true)
	{
		//audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}

	//reward shit
	global.playerMoney += 500;
	if (instance_exists(obj_deathKnightScythe_2)){with(obj_deathKnightScythe_2){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}