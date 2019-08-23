/// @description Insert description here
// You can write your code in this editor
direction = 0;
speed = 0;
if (instance_exists(par_enemy))
{
	//charachter
	var nearestEnemy = instance_nearest(x,y,par_enemy);
	repeat(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost))
	{
		var knife = instance_create_depth(x,y,obj_player.depth+1,obj_dashKnife);
		knife.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)+irandom_range(-20,20);
		knife.speed = choose(4,5,6);
	}
	//items
	if (global.selectedSoulGuardsItem == SoulGuardsItem.SoulSword)
	{
		var soulSword = instance_create_depth(x,y,depth+1,obj_item_soulSword);
		soulSword.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)+irandom_range(-8,8);
		soulSword.speed = 6;
		soulSword.image_xscale = 0.9;
		soulSword.image_yscale = 0.9;	
	}
	if (global.selectedVampireItem == VampireBossItems.VampireCloak)
	{
		var angle3 = 15;
		repeat(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost))
		{
			var batProjectile = instance_create_depth(x,y,1,obj_item_batProjectile);
			batProjectile.direction = angle3;
			batProjectile.speed = 5;
			angle3+= 360/(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost));
		}
	}
}