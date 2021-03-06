/// @description Insert description here
var target = instance_nearest(x,y,par_enemy);
dmg = global.deathScyhteDamage;
var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
	demonShade.fadeSpeed = 0.25;
	demonShade.sprite_index = sprite_index;
	demonShade.image_xscale = image_xscale;
	demonShade.image_yscale = image_yscale;
	demonShade.image_angle = image_angle;
	demonShade.image_alpha = image_alpha;
	demonShade.image_index = image_index;
	demonShade.image_alpha = 0.5;

if (state == MeleeWeaponStates.idle)
{
	sprite_index = ogSprite;
	image_angle = global.player.weaponDirection-135+180;
	image_index = 0;

	x = global.player.x;
	y = global.player.y;
}
if (state == MeleeWeaponStates.Strike)
{
	var angle = global.player.weaponDirection+180;
	sprite_index = spr_equipment_deathScythe_strike;

	image_angle += 40;
	
	x = global.player.x - dcos(angle)*35;
	y = global.player.y + dsin(angle)*35;

	if (place_meeting(x,y,target) && canDealDamage == true)
	{
		canDealDamage = false;
		var damageToTarget = dmg;
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
		with(obj_camera){shake_remain += 3;}
		
		var amountHealed = dmg*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		global.player.hp += dmg*global.lifeSteal;
		
		global.player.rightClickCooldownLeft *= 0.2;
		
		alarm[1] = (0.25)*30;
	}
}
if (state == MeleeWeaponStates.SpinOnce)
{
	x = global.player.x;
	y = global.player.y;
	
	if (spinTimes > 0 && canSpin == true)
	{
		canSpin = false;
		spinTimes--;
		
		doSpin = true;
		currentAngle = image_angle;
	}
	if (doSpin == true && image_angle < currentAngle+360)
	{
		image_angle += spinSpeed;
		image_index = 1;
	}
	if (image_angle < currentAngle+360)
	{
		alarm[0] = (0.10)*30;
		image_index = 0;
	}
	if (spinTimes <= 0 && canSpin == true)
	{
		state = MeleeWeaponStates.idle
		doSpin = false;
	}
	image_index = 1;
}
if (state == MeleeWeaponStates.SpinChase)
{
	x = global.player.x;
	y = global.player.y;
	
	dmg = global.damage*7;
	image_angle += spinSpeed*0.75;
	image_index = 1;
}
if (state == MeleeWeaponStates.SpinOnce || state == MeleeWeaponStates.SpinChase)
{
	if (place_meeting(x,y,target) && canDealDamage == true)
	{
		canDealDamage = false;
		var damageToTarget = dmg;
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_white;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
		with(obj_camera){shake_remain += 2;}
		
		var amountHealed = dmg*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		obj_allPlayer.hp += dmg*global.lifeSteal;
		
		alarm[1] = (0.25)*30;
	}
}
