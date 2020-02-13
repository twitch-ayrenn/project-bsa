/// @description Insert description here
image_alpha = 0.8;
depth = -y-100;
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	with(obj_camera){shake_remain += 2;}
	if (place_meeting(x,y,obj_allBoss))
	{
		var playerX = global.player.x;
		var playerY = global.player.y;
	
		if (place_free(obj_allBoss.x,obj_allBoss.y)){global.player.x = obj_allBoss.x;}
		if (place_free(obj_allBoss.x,obj_allBoss.y)){global.player.y = obj_allBoss.y;}
	
		obj_allBoss.x = playerX;
		obj_allBoss.y = playerY;
	
		obj_holyBeam.x = obj_allBoss.x;
		obj_holyBeam.y = obj_allBoss.y;
	}
	
	var damageDealt = global.damage*4;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*4;
	}
	var amountHealed = global.damage*4*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_allPlayer)
	{
		hp += global.damage*4*global.lifeSteal;
	}
	instance_destroy();
}
