/// @description Insert description here
dealDamage = true;
if (target == "boss" && instance_exists(obj_allBoss))
{
	var enemy = instance_nearest(x,y,par_enemy);
	var player = instance_nearest(x,y,obj_allPlayer);	
	var damageDealt = global.damage;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	enemy.hp -= global.damage;
			
	var amountHealed = global.damage*global.lifeSteal;
	var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (global.player)
	{
		hp += global.damage*global.lifeSteal;
	}
}
if (target == "allied" && instance_exists(targetId))
{
	with (targetId)
	{
		var amountHealed = 1;
		var healText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed/10;
		hp += amountHealed;
	}
}