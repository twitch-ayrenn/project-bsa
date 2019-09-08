/// @description Insert description here
// You can write your code in this editor
globalvar attack; 
#region Visuals
randomize();
var sizeX
if (x < obj_allPlayer.x){sizeX = size;}
if (x > obj_allPlayer.x){sizeX = -size;}
image_xscale = sizeX;
image_yscale = size;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y;
image_alpha = alpha;
blackOutAlpha += clamp(0.1/30,0,1);
#endregion
#region Movement
var target = obj_allPlayer
actualSpeed = moveSpeed;
if (moveType == MovementType.WalkingTowards)
{
	move_towards_point(target.x,target.y,actualSpeed);
}
if (moveType == MovementType.WalkingAround)
{
	if (distance_to_point(obj_allPlayer.x + pointX,obj_allPlayer.y + pointY) > 6)
	{
		move_towards_point(obj_allPlayer.x + pointX,obj_allPlayer.y + pointY,actualSpeed);
	}
}
#endregion
#region Ongoing things
if (gameMaster.chosenBoss == Boss.TheCorrupter1)
{
	if (rapidFireStacks > 0 && canRapidAttack == true)
	{
		canRapidAttack = false;
		rapidFireStacks -= 1;
		
		var corruptKlot = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		corruptKlot.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		corruptKlot.speed = 6;
		corruptKlot.image_angle = corruptKlot.direction;
		//Visual
		corruptKlot.image_alpha = 0.85;
		corruptKlot.image_blend = c_purple;
		corruptKlot.sprite_index = spr_bloodKlott;
		corruptKlot.image_xscale = 1.5;
		corruptKlot.image_yscale = 1.5;
		
		alarm[2] = (0.5)*30;
	}
}
#endregion
#region Attacks
if(chooseAnAttack == true)
{
	chooseAnAttack = false;
	#region Tier1 Bosses
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 1){attack = choose(Atks.NormalShot,Atks.NormalShot,Atks.NormalShot,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 2){attack = choose(Atks.NormalShot,Atks.GooSpawn,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.FlameWisp && phase == 1){attack = choose(Atks.ConeAttack,Atks.OneShotAttack,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.FlameWisp && phase == 2){attack = choose(Atks.ConeAttack,Atks.CircleAttack,Atks.ChaseAttack);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 1){attack = choose(Atks.BeamAttack,Atks.RapidFire,Atks.GooSpawn);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1 && phase == 2){attack = choose(Atks.BeamAttack,Atks.RapidFire);}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus && phase == 1){attack = choose(Atks.ConeAttack,Atks.OneShotAttack,Atks.TeleportAttack);}
	if (gameMaster.chosenBoss == Boss.BloodRoyalVarus && phase == 2){attack = choose(Atks.ChaseAttack,Atks.OneShotAttack,Atks.TeleportAttack);}
	#endregion
	if (attack == Atks.NormalShot)
	{
		sprite_index = normalSprite;
		attackColor = c_maroon;
	}
	if (attack == Atks.CircleAttack)
	{
		sprite_index = circleSprite;		
		attackColor = c_fuchsia;
	}
	if (attack == Atks.GooSpawn)
	{
		sprite_index = gooSprite;
		attackColor = c_blue;
	}
	if (attack == Atks.ConeAttack)
	{
		sprite_index = coneSprite;		
		attackColor = c_aqua;
	}
	if (attack == Atks.OneShotAttack)
	{
		sprite_index = oneShotSprite;
		attackColor = c_red;
	}
	if (attack == Atks.ChaseAttack)
	{
		sprite_index = chaseSprite;
		attackColor = c_yellow;
	}
	if (attack == Atks.RapidFire)
	{
		sprite_index = rapidFireSprite;
		attackColor = global.lightBlue;
	}
	if (attack == Atks.BeamAttack)
	{
		sprite_index = beamSprite;
		attackColor = global.orange;
		drawArea = true;
	}
	if (attack == Atks.TeleportAttack)
	{
		sprite_index = teleportSprite;
		attackColor = global.purple;
		alpha = 0;
		var xTp = obj_allPlayer.x + choose(-200,-150,-100,100,150,200);
		var yTp = obj_allPlayer.y + choose(-150,-100,100,150);
		if (place_empty(xTp,y,obj_noGoZone)){x = xTp;}
		if (place_empty(x,yTp,obj_noGoZone)){y = yTp;}
	}
	alarm[0] = timeAfterIndicate;
	alarm[1] = attackCooldown;
}
#endregion
#region Phases
if (hp <= 0 && phase == 1 && phase != maxPhase)
{
	phase++;
	hp = phase2Hp;
	moveSpeed = phase2Ms;
	global.bossDamage = phase2Dmg;
	if (gameMaster.chosenBoss == Boss.FlameWisp)
	{
		var infernalBall = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
		//Main
		infernalBall.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
		infernalBall.speed = 3;
		infernalBall.image_angle = infernalBall.direction+90;
		//Visual
		infernalBall.image_alpha = 0.85;
		infernalBall.image_blend = global.orange;
		infernalBall.sprite_index = spr_fireBall;
		infernalBall.image_xscale = 3;
		infernalBall.image_yscale = 3;
		infernalBall.chase = true;
		infernalBall.range = (6.5)*30;
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
	{
		var middleGooSpawn = instance_nearest(645,590,obj_enemyProjectile);
		with (middleGooSpawn)
		{
			image_xscale = 3;
			image_yscale = image_xscale;
		}
	}
}
if (hp <= 0 && phase == 2 && phase != maxPhase)
{
	phase++;
	hp = phase3Hp;
	moveSpeed = phase3Ms;
	global.bossDamage = phase3Dmg;
}
if (hp <= 0 && phase == 3 && phase != maxPhase)
{
	phase++;
	hp = phase4Hp;
	moveSpeed = phase4Ms;
	global.bossDamage = phase4Dmg;
}
if (hp <= 0 && phase == 4 && phase != maxPhase)
{
	phase++;
	hp = phase5Hp;
	moveSpeed = phase5Ms;
	global.bossDamage = phase5Dmg;
}
if (hp <= 0 && phase == 5 && phase != maxPhase)
{
	phase++;
	hp = phase6Hp;
	moveSpeed = phase6Ms;
	global.bossDamage = phase6Dmg;
}
if (hp <= 0 && phase == maxPhase)
{
	//boss
	if (instance_exists(par_bossStuff)){with(par_bossStuff){instance_destroy();}}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	gameMaster.menu = Menues.BossSlain;
	if (gameMaster.chosenClass == Character.ShadowAssassin){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.TheRedWarrior){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Pyromancer){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Shopkeeper){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.BloodKnight){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.AgentOfGod){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.AngelSlayer){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.Graveling){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.PlaugeWalker){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	if (gameMaster.chosenClass == Character.RainbowSlime){assassinItems[gameMaster.chosenBoss] = gameMaster.chosenBoss;}
	game_save(global.saveFile);
	instance_destroy();
}
#endregion