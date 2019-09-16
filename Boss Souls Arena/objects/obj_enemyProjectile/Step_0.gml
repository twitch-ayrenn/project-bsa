/// @description Insert description here
#region vars
if (place_meeting(x,y,obj_allBoss) == false){depth = -50;}
if (sprite_index == spr_gooGround){depth = -5;}
var target = obj_allPlayer;
dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));
stacks++;
#endregion
#region Visuals 
if (effectType == Effect.Flare){var party = effect_create_below(ef_flare,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
if (effectType == Effect.Star){var party = effect_create_below(ef_star,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
if (effectType == Effect.Spark){var party = effect_create_below(ef_spark,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
if (effectType == Effect.Smoke){var party = effect_create_below(ef_smoke,x,y,0.005,image_blend);part_system_depth(party,depth+5);}
if (gooGroundSizeFix == true && sprite_index == spr_gooGround) {image_xscale = image_xscale*0.75;image_yscale = image_xscale; gooGroundSizeFix = false;}
if (sprite_index == spr_bloodKlott){image_angle -= 30;}
if (sprite_index == spr_beam)
{
	image_xscale += sizeChanger/30;
	if (image_xscale >= maxSize)
	{
		sizeChanger *= -1;	
	}
	if (image_xscale <= minSize)
	{
		instance_destroy();	
	}
	
}
#endregion
#region movement
if (chase == true && instance_exists(target))
{
	move_towards_point(target.x,target.y,target.actualSpeed*1.3);
	image_angle = direction+90;
}
if (stickOn == true && instance_exists(obj_allBoss))
{
	x = obj_allBoss.x;	
	y = obj_allBoss.y;
}
if (sprite_index == spr_beam && gameMaster.chosenBoss != Boss.TheMadWitches){x = lockOn.x; y = lockOn.y;depth = lockOn.depth+1;}
#endregion
if (destroy == true)
{
	destroy = false;
	alarm[0] = range;
}
#region damage
if (place_meeting(x,y,target) && sprite_index != spr_gooGround && global.iFrame == false 
&& sprite_index != spr_beam && sprite_index != spr_chaseDamage)
{
	var damageToTarget = clamp(dmg,1,0.8*(target.maxHp));
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget;
	if(sprite_index == spr_bloodKlott && gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,target.x,target.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 0.5;
		gooGround.image_yscale = 0.5;
		gooGround.destroy = false;
	}
	with (obj_camera){shake_remain += 2;}
	instance_destroy();
}
if (stacks >= (1)*30 && sprite_index == spr_gooGround ||stacks >= (1)*30 && sprite_index == spr_chaseDamage)
{
	if (place_meeting(x,y,target) && sprite_index == spr_gooGround && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	if (place_meeting(x,y,target) && sprite_index == spr_chaseDamage && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg*2,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	if (place_meeting(x,y,target) && sprite_index == spr_beam && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg*3,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	stacks = 0;
}
if (stacks >= (0.25)*30 && sprite_index == spr_beam)
{
	if (place_meeting(x,y,target) && sprite_index == spr_beam && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg*2,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	stacks = 0;
}
#endregion