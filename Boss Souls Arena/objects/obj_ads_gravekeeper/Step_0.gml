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

//
//fases
if  (fase == 1)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
	}
	//step
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,2);
	if(chooseAnAttack == true)
	{
		chooseAnAttack = false;
		globalvar chooseAttack4; 
		chooseAttack4 = choose(
			Attacks.CirkleScythe,
		)
		if (chooseAttack4 == Attacks.CirkleScythe)
		{
			sprite_index = spr_boss_theGraveKeeper_purple;
		}
		alarm[0] = (2)*30;
		alarm[1] = (5.5)*30;
	}
}
if (hp <= 0)
{
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
	//reward
	instance_destroy();
}