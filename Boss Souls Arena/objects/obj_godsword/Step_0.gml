/// @description Insert description here
var target = instance_nearest(x,y,par_enemy);
var angle = global.player.weaponDirection+180;
dmg = global.damage*5;
if (global.player.speed > 0)
{
	var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
	demonShade.fadeSpeed = 0.10;
	demonShade.sprite_index = sprite_index;
	demonShade.image_xscale = image_xscale;
	demonShade.image_yscale = image_yscale;
	demonShade.image_angle = image_angle;
	demonShade.image_alpha = image_alpha;
	demonShade.image_index = image_index;
	demonShade.image_alpha = 0.6;
}
if (state == MeleeWeaponStates.idle)
{
	sprite_index = spr_godsword;
	image_angle = point_direction(x,y,global.player.x,global.player.y)-135+180;
	angleBeforeStrike = image_angle;

	x = global.player.x + dcos(angle)*15;
	y = global.player.y - dsin(angle)*15;
}
if (state == MeleeWeaponStates.Strike)
{
	sprite_index = spr_godsword_speed;
	if (image_angle != global.player.direction-135)
	{
		image_angle += 5;
		image_angle = clamp(image_angle,0,global.player.direction-135);
	}
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
	}
	if (image_angle < currentAngle+360)
	{
		alarm[0] = 0.1*30;// 0.1*30
	}
	if (spinTimes <= 0 && canSpin == true)
	{
		state = MeleeWeaponStates.idle
		doSpin = false;
	}
}
