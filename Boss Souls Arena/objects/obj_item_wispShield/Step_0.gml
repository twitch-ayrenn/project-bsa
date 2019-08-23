/// @description Insert description here
// You can write your code in this editor
if (hp > maxHp){hp = maxHp;}
depth = obj_player.depth-1;
if (instance_exists(obj_player_mage) == false)
{
	x = obj_player.x;
	y = obj_player.y-2;
}
if (instance_exists(obj_player_mage) == true)
{
	if (obj_player_mage.state == States.Idle)
	{
		x = obj_player.x;
		y = obj_player.y+10;
	}
	if (obj_player_mage.state == States.Walking)
	{
		x = obj_player.x;
		y = obj_player.y;
	}
}
image_blend = c_red;
image_alpha = clamp((hp /maxHp)*0.35,0.0001,1);

if (obj_player.image_xscale > 0)
{
	image_xscale = size;
}
if (obj_player.image_xscale < 0)
{
	image_xscale = -size;
}
//
if (hp > 0)
{
	playerCurrentMaxHp = obj_player.maxHp;
	if (obj_player.hp < playerCurrentMaxHp)
	{
		with (obj_player)
		{
			if (class == Class.The_Assasin || class == Class.The_Warrior || class == Class.The_Mage || class == Class.The_Shopkeeper || class == Class.The_BloodKnight)
			{
				hp = obj_item_wispShield.playerCurrentMaxHp;
			}
		}
	}
}
if (cirkleShot == true)
{
	cirkleShot = false;
	var angle = 15;
	repeat(cirkleShotAmount)
	{
		var wispShot = instance_create_depth(x,y,depth-2,obj_item_shieldShot);
			wispShot.direction = angle;
			wispShot.speed = 5;
			wispShot.image_angle = angle+90;
			wispShot.image_xscale = size*0.6;
			wispShot.image_yscale = size*0.6;
			wispShot.image_blend = c_red;
			wispShot.image_alpha = clamp(image_alpha,0.2,1);
			angle += (360/cirkleShotAmount);
	}
	
	alarm[3] = cirkleShotTime;
}
