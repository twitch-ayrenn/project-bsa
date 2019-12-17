	/// @description Insert description here
image_alpha = 0.8;
depth = -y;
if (isMeteor == true) {depth = -2000;}
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var damageDealt = global.damage*charge*1.1;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		var nearestFireBall = instance_nearest(x,y,obj_firebolt);
		hp -= global.damage*nearestFireBall.charge*1.1;
	}
	var amountHealed = global.damage*charge*global.lifeSteal*1.1;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		var nearestFireBall = instance_nearest(x,y,obj_firebolt);
		hp += global.damage*global.lifeSteal*nearestFireBall.charge*1.1;
	}
	if (isMeteor == true)
	{
		instance_create_depth(x,y,depth,obj_meteorGround);
	}
	if (image_xscale >= 2.5){with(obj_camera){shake_remain += 7*image_xscale;}}
	instance_destroy();
}
if (isMeteor == true)
{
	if (place_meeting(x,y,obj_enemyProjectile))
	{
		with (obj_enemyProjectile)
		{
			if (sprite_index != spr_beam && sprite_index != spr_gooGround)
			{
			 instance_destroy();	
			}
		}
	}
}