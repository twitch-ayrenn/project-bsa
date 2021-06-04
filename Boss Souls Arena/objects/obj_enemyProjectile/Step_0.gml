#region vars
//depth
depth = -y-50;
size = image_xscale;
if (sprite_index == spr_gooGround){depth = -7;}
var target = global.player;
//damage
if (sprite_index == spr_gooGround || sprite_index == spr_chaseDamage || spr_statueOfChase){dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));}
if (sprite_index == spr_beam){dmg = clamp(global.bossDamage*3*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));}
if (sprite_index == spr_fireBall || sprite_index == spr_bat || sprite_index == spr_swordShot || sprite_index == spr_bloodKlott 
|| sprite_index == spr_graveScythe_projectile || sprite_index == spr_slime)
{
	dmg = clamp(global.bossDamage*image_xscale*image_xscale*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));
}
stacks++;
#endregion
#region Visuals 
//if (effectType == Effect.Flare){var party = effect_create_below(ef_flare,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
//if (effectType == Effect.Star){var party = effect_create_below(ef_star,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
//if (effectType == Effect.Spark){var party = effect_create_below(ef_spark,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
//if (effectType == Effect.Smoke){var party = effect_create_below(ef_smoke,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
if (sprite_index == spr_swordShot){image_angle -= 30;}
if (sprite_index == spr_graveScythe_projectile){image_angle += 30;}
if (sprite_index == spr_beam)
{
	image_xscale += sizeChanger/30;
	if (image_xscale >= maxSize && beamChase == false)
	{
		sizeChanger *= -1;	
	}
	if (image_xscale <= minSize && beamChase == false)
	{
		instance_destroy();	
	}
	image_xscale = clamp(image_xscale,minSize,maxSize);
}
if (sprite_index == spr_bat)
{
	if (direction >= 90 && direction <= 270){ image_xscale =-size;}
	if (direction < 90 || direction > 270){ image_xscale = size;}
}
if (gameMaster.chosenBoss == Boss.ArenaKing && sprite_index = spr_beam && instance_exists(obj_allBoss)){depth = obj_allBoss.depth+100;}
#endregion
#region movement
if (chase == true && instance_exists(target) && sprite_index != spr_statueOfChase && sprite_index != spr_bat)
{
	move_towards_point(target.x,target.y,2);
	image_angle = direction+90;
}
if (chase == true && instance_exists(target))
{
	if (sprite_index == spr_statueOfChase || sprite_index == spr_bat)
	{
		move_towards_point(target.x,target.y,speed);
	}
}
if (stickOn == true)
{
	x = obj_allBoss.x;	
	y = obj_allBoss.y;
	depth = obj_allBoss.depth+1;
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
	{
		x = global.arenaMiddleX-400;	
		y = global.arenaMiddleY;
	}
	if (gameMaster.chosenBoss == Boss.DemonQueensHead)
	{
		x = obj_allBoss.x;	
		y = obj_allBoss.y-29;
	}
	if (gameMaster.chosenBoss == Boss.DeathKing)
	{
		x = global.arenaMiddleX;	
		y = global.arenaMiddleY+400;
		depth = -y-1000;
	}
	
}
if (beamChase == true)
{
	image_angle -= turningSpeed/30;	
}
if (goToBoss == true && instance_exists(obj_allBoss))
{
	move_towards_point(obj_allBoss.x,obj_allBoss.y,speed);
	if (sprite_index == spr_fireBall)
	{
		image_angle = direction+90;
	}
	if (place_meeting(x,y,obj_allBoss))
	{
		instance_destroy();	
	}
}
#endregion
if (destroy == true)
{
	destroy = false;
	alarm[0] = range;
}
#region damage
if (place_meeting(x,y,target) && sprite_index != spr_gooGround && global.iFrame == false && sprite_index != spr_beam && sprite_index != spr_chaseDamage && global.noDamage == false && sprite_index != spr_statueOfChase)
{
	var damageToTarget = dmg;
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget*global.campaignDifficulty;
	#region Pool On hit
	if(gameMaster.chosenBoss == Boss.BloodZombie  || gameMaster.chosenBoss == Boss.SlimeQueen || gameMaster.chosenBoss == Boss.ArenaKing)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.speed = 0;
		//Visual
		gooGround.image_alpha = 1;
		if (gameMaster.chosenBoss == Boss.BloodZombie){gooGround.image_blend = c_maroon;}
		if (gameMaster.chosenBoss == Boss.SlimeQueen){gooGround.image_blend = c_green;}
		if (gameMaster.chosenBoss == Boss.ArenaKing){gooGround.image_blend = global.goldColor;}
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 0.15;
		if (gameMaster.chosenBoss == Boss.ArenaKing){gooGround.image_xscale = 0.04 + image_xscale/30;}
		if (gameMaster.chosenBoss == Boss.SlimeQueen){gooGround.image_xscale = 0.10;}
		gooGround.image_yscale = gooGround.image_xscale;
		gooGround.destroy = false;
	}
	#endregion
	with (obj_camera){shake_remain += 2;}
	global.noDamage = true;
	instance_destroy();
}
if (stacks >= (1)*30 && sprite_index == spr_gooGround && place_meeting(x,y,target) && global.iFrame == false || stacks >= (1)*30 && sprite_index == spr_chaseDamage && place_meeting(x,y,target) && global.iFrame == false 
|| stacks >= (1)*30 && sprite_index == spr_statueOfChase && place_meeting(x,y,target) && global.iFrame == false)
{
	var damageToTarget = dmg;
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget*global.campaignDifficulty;
	stacks = 0;
}
if (stacks >= (0.25)*30 && sprite_index == spr_beam && place_meeting(x,y,target) && global.iFrame == false)
{
	var damageToTarget = dmg;
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget*global.campaignDifficulty;
	stacks = 0;
}
#endregion