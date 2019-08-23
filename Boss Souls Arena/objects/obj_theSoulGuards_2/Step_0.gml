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
global.sgProjectileDamage = (32 + obj_player.hp*0.32)*(1 +(global.playerLevel/50))*global.dD;
//
//fases
if  (phase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
	}
	//step
	move_towards_point(obj_player.x+30,obj_player.y+30,guardSpeed);
	if(chooseAnAttack == true)
	{
		chooseAnAttack = false;
		globalvar chooseSoulAttack2;
		chooseSoulAttack2 = choose(
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
		with(obj_soulGuardSword_left_2){state = SwordStates.Idle;}
		with(obj_soulGuardSword_right_2){state = SwordStates.Idle;}
		if (chooseSoulAttack2 == SoulAttacks.Sword_Spin)
		{
			sprite_index = spr_boss_theSoulGuards_spin_2;
			guardSpeed = obj_player.moveSpeed-0.5;
		}
		if (chooseSoulAttack2 == SoulAttacks.Cirkle_Attack)
		{
			sprite_index = spr_boss_theSoulGuards_cirkle_2;
			guardSpeed = 2;
		}
		if (chooseSoulAttack2 == SoulAttacks.Cone_Attack)
		{
			sprite_index = spr_boss_theSoulGuards_blue_2;
			guardSpeed = 2;
		}
		if (chooseSoulAttack2 == SoulAttacks.Mini_Gun)
		{
			sprite_index = spr_boss_theSoulGuards_MiniGun_2;
			guardSpeed = 2;
		}
		if (chooseSoulAttack2 == SoulAttacks.Gain_Strength)
		{
			sprite_index = spr_boss_theSoulGuards_Heal_2;
			guardSpeed = 2;
		}
		if (chooseSoulAttack2 == SoulAttacks.TelePort)
		{
			sprite_index = spr_boss_theSoulGuards_Teleport_2;
			guardSpeed = 3;
		}
		alarm[0] = (2.2)*30;
		alarm[1] = (7)*30;
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
	//boss
	instance_destroy(obj_soulGuardSword_right_2);
	instance_destroy(obj_soulGuardSword_left_2);
	instance_destroy();
}