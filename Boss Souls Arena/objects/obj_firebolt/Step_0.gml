	/// @description Insert description here
image_alpha = 0.9;
depth = -y;
if (isMeteor == true) 
{
	depth = -y-2000;
	//var meteorTrail = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
	//meteorTrail.fadeSpeed = 0.11;
	//meteorTrail.sprite_index = sprite_index;
	//meteorTrail.image_xscale = image_xscale;
	//meteorTrail.image_yscale = image_yscale;
	//meteorTrail.image_angle = image_angle;
	//meteorTrail.image_blend = image_blend;
	//meteorTrail.image_alpha = image_alpha;
}
if (place_meeting(x,y,obj_bulletDestroyer) && isMeteor == false){instance_destroy();} 
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var damageDealt = global.damage*charge;
	var damageText = instance_create_depth(enemy.x+irandom_range(-16,16),enemy.y+irandom_range(-12,12),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		var nearestFireBall = instance_nearest(x,y,obj_firebolt);
		hp -= global.damage*nearestFireBall.charge;
	}
	var amountHealed = global.damage*charge*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-12,12),obj_allPlayer.y+irandom_range(-8,8),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;

	global.player.hp += global.damage*global.lifeSteal*id.charge;
	
	if (isMeteor == true)
	{
		instance_create_depth(x,y,depth,obj_meteorGround);
	}
	if (isMeteor){with(obj_camera){shake_remain += 12;}}
	if (isAttack){with(obj_camera){shake_remain += image_xscale*7;}}
	if (isPortalAttack || isRightClick){with(obj_camera){shake_remain += 0.45;}}
	instance_destroy();
}
if (isMeteor == true)
{
	if (place_meeting(x,y,obj_enemyProjectile))
	{
		with (obj_enemyProjectile)
		{
			if (sprite_index != spr_beam && sprite_index != spr_gooGround && place_meeting(x,y,obj_firebolt))
			{
				instance_destroy();	
			}
		}
	}
}