/// @description Insert description here
// You can write your code in this editor
direction = 0;
speed = 0;
if (instance_exists(par_enemy))
{
	//charachter
	var nearestEnemy = instance_nearest(x,y,par_enemy);
	var sprayShot = instance_create_depth(x,y+3,depth+1,obj_rubyShot);
	sprayShot.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)+7;
	sprayShot.speed = 6;
	sprayShot.image_angle = sprayShot.direction;
	sprayShot.image_xscale = 0.75;
	sprayShot.image_yscale = 0.75;
	
	var sprayShot2 = instance_create_depth(x,y+3,depth+1,obj_rubyShot);
	sprayShot2.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y);
	sprayShot2.speed = 6;
	sprayShot2.image_angle = sprayShot2.direction;
	sprayShot2.image_xscale = 0.75;
	sprayShot2.image_yscale = 0.75;
	
	var sprayShot3 = instance_create_depth(x,y+3,depth+1,obj_rubyShot);
	sprayShot3.direction = point_direction(x,y,nearestEnemy.x,nearestEnemy.y)-7;
	sprayShot3.speed = 6;
	sprayShot3.image_angle = sprayShot3.direction;
	sprayShot3.image_xscale = 0.75;
	sprayShot3.image_yscale = 0.75;
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
		var angle3 = 25;
		repeat(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost))
		{
			var batProjectile = instance_create_depth(x,y,1,obj_item_batProjectile);
			batProjectile.direction = angle3;
			batProjectile.speed = 5;
			angle3+= 360/(int64(5*global.vampireCloakProjectileBoost*global.scarletsProjectileBoost*global.portalSummoningBoost*global.kingsHeadSummongingBoost*global.wispSoulSummoningBoost));
		}
	}
}