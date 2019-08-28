/// @description Insert description here
// You can write your code in this editor
#region Visuals
var sizeX
if (x < obj_allPlayer.x){sizeX = size;}
if (x > obj_allPlayer.x){sizeX = -size;}
image_xscale = sizeX;
image_yscale = size;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y;
image_alpha = alpha;
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
#region Attacks
if(chooseAnAttack == true)
{
	chooseAnAttack = false;
	globalvar attack; 
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 1){attack = choose(Atks.NormalShot,Atks.NormalShot,Atks.NormalShot,Atks.CircleAttack);}
	if (gameMaster.chosenBoss == Boss.BloodZombie && phase == 2){attack = choose(Atks.NormalShot,Atks.GooSpawn,Atks.CircleAttack);}
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