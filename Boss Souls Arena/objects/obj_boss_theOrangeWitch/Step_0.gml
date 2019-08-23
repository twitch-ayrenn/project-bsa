/// @description Insert description here
////code
//regen
damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/50))*global.dD;
regenStacks++;
if (regenStacks >= (1)*30)
{
	hp += 1;
	var healBossAmount = 1;
	var healBoss = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
	healBoss.color = c_red;
	healBoss.text = healBossAmount;	
	if (instance_exists(obj_boss_theYellowWitch))
	{
		with (obj_boss_theYellowWitch)
		{
			hp += 16;
			var healBossAmount = 16;
			var healBoss = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			healBoss.color = c_red;
			healBoss.text = healBossAmount;	
		}
	}
	regenStacks = 0;
}
if (hp > maxHp){hp = maxHp;}
//movement
if (witchPostion > 3){witchPostion = 1;}
if (witchPostion == 1)
{
	if (distance_to_point(obj_player.x,obj_player.y-70) > 6)
	{
		move_towards_point(obj_player.x,obj_player.y-70,3);		
	}
}
if (witchPostion == 2)
{
	if (distance_to_point(obj_player.x-50,obj_player.y+50) > 6)
	{
		move_towards_point(obj_player.x-50,obj_player.y+50,3);
	}
}
if (witchPostion == 3)
{
	if (distance_to_point(obj_player.x+50,obj_player.y+50) > 6)
	{
		move_towards_point(obj_player.x+50,obj_player.y+50,3);
	}
}
//shootings
if (shoot == true)
{
	shoot = false;
	var cirkleShot = instance_create_depth(x,y,depth-1,obj_witchshot_orange);
	cirkleShot.direction = angle;
	cirkleShot.image_angle = angle+90;
	cirkleShot.damage = damage;
	cirkleShot.image_xscale = 0.5;
	cirkleShot.image_yscale = 0.5;
	cirkleShot.speed = 4;
	angle += (360/10);
	
	alarm[0] = firerate;
}
if (hp < 0)
{
	global.playerMoney += 100;
	repeat(15*global.vampireCrownExtraOrb*global.lifeWispExtraOrb)
	{
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);	
	}
	var pendantAngle = 0;
	if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
	{
		repeat(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
		{
			var scarletShot = instance_create_depth(x,y,depth+1,obj_item_scarletShot);
			scarletShot.direction = pendantAngle;
			scarletShot.speed = global.scarletShotSpeed;
			scarletShot.image_angle = pendantAngle+90;
			pendantAngle += 360/(int64((obj_player.maxHp/20)*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost));
		}
	}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.1;	
	}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
	{
		global.damage *= 1.02;	
	}if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{
		with(obj_player)
		{
			ashStacks += 15;
		}
	}
	with (obj_player){if(class == Class.The_Assasin){canDash = true;}}
	if (global.soundOn == true)
	{
		audio_play_sound(snd_witchDeath,Prioity.Normal,false);	
	}
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}