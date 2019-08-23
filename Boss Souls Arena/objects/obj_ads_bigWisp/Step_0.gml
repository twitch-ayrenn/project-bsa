/// @description code
//stats
//fase1
fase1Damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/50))*global.dD;
fase2Damage = (6 + obj_player.hp*0.012)*(1 +(global.playerLevel/50))*global.dD;
fase3Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/50))*global.dD;
fase4Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/50))*global.dD;
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
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = fase1Hp;
		maxHp = hp;
	}
	//step
	move_towards_point(obj_player.x+pointX,obj_player.y+pointY,1);
	if (fase1Shoot == true)
	{
		fase1Shoot = false;
		
		var wispShot = instance_create_depth(x,y,1,obj_wispShot_weak);
		wispShot.image_angle = point_direction(x,y,obj_player.x,obj_player.y)+90;
		wispShot.direction = point_direction(x,y,obj_player.x,obj_player.y);
		wispShot.speed = 5;
		wispShot.color = faseColor;
		wispShot.damage = fase1Damage;
		wispShot.image_xscale = 1;
		wispShot.image_yscale = 1;
		
		alarm[0] = fase1Firerate;
	}
	if (fase1Summon == true)
	{
		fase1Summon = false;
		var wisp = instance_create_depth(x+choose(-30,30,0),y+choose(-30,30,0),1,obj_ads_ads_wisp);
		wisp.color = choose(c_maroon,c_green);
		alarm[1] = fase1SummonTime;
		fase1SummonTime = (4)*choose(20,30,40);
	}
}
if (hp <= 0 && fase == 1)
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
	instance_destroy();
}



