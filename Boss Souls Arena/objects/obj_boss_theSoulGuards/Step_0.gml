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
global.sgChaseDamage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/50))*global.dD;
global.sgProjectileDamage = (50 + obj_player.hp*0.1)*(1 +(global.playerLevel/50))*global.dD;
//
//fases
if  (phase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
	}
	//step
	move_towards_point(obj_player.x-30,obj_player.y-30,guardSpeed);
	if(chooseAnAttack == true)
	{
		chooseAnAttack = false;
		globalvar chooseSoulAttack; 
		chooseSoulAttack = choose(
			SoulAttacks.Sword_Spin,
			SoulAttacks.Cirkle_Attack,
			SoulAttacks.Cone_Attack,
			SoulAttacks.Mini_Gun,
			SoulAttacks.Gain_Strength,
			SoulAttacks.TelePort,
		)
		if (global.soundOn == true)
		{
			//audio_play_sound(snd_theGraveKeeper_windUp,Prioity.Normal,false);
		}
		with(obj_soulGuardSword_left){state = SwordStates.Idle;}
		with(obj_soulGuardSword_right){state = SwordStates.Idle;}
		if (chooseSoulAttack == SoulAttacks.Sword_Spin)
		{
			sprite_index = spr_boss_theSoulGuards_spin;
			guardSpeed = obj_player.moveSpeed-0.5;
		}
		if (chooseSoulAttack == SoulAttacks.Cirkle_Attack)
		{
			sprite_index = spr_boss_theSoulGuards_cirkle;
			guardSpeed = 2;
		}
		if (chooseSoulAttack == SoulAttacks.Cone_Attack)
		{
			sprite_index = spr_boss_theSoulGuards_blue;
			guardSpeed = 2;
		}
		if (chooseSoulAttack == SoulAttacks.Mini_Gun)
		{
			sprite_index = spr_boss_theSoulGuards_MiniGun;
			guardSpeed = 2;
		}
		if (chooseSoulAttack == SoulAttacks.Gain_Strength)
		{
			sprite_index = spr_boss_theSoulGuards_Heal;
			guardSpeed = 2;
		}
		if (chooseSoulAttack == SoulAttacks.TelePort)
		{
			sprite_index = spr_boss_theSoulGuards_Teleport;
			guardSpeed = 3;
		}
		alarm[0] = (1.8)*30;
		alarm[1] = (6)*30;
	}
	if (minigun == true && minigunBullets > 0)
	{
		minigun = false;
		minigunBullets -= 1;
		
		var scythe3 = instance_create_depth(x,y,1,obj_sword_projectile);
		scythe3.direction = point_direction(x,y,obj_player.x,obj_player.y);
		scythe3.speed = 6;
		
		alarm[2] = miniGunFirerate;
	}
}
if (hp <= 0 && phase == 1)
{
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	repeat(15*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.1;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.02;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 15;
		}
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	//reward
	global.theSoulGuardsReward += 500;
	global.playerMoney += 500;
	if (global.soundOn == true)
	{
		//audio_play_sound(snd_theGraveKeeper_death,Prioity.Small,false);
	}
	//boss
	instance_destroy(obj_soulGuardSword_right);
	instance_destroy(obj_soulGuardSword_left);
	instance_destroy();
	if (global.summonBossOnce == true)
	{
		global.summonBossOnce = false;
		instance_create_depth(obj_player.x+80,obj_player.y,depth,obj_boss_theSoulGuards);
		instance_create_depth(obj_player.x-80,obj_player.y,depth,obj_theSoulGuards_2);
	}
	
}