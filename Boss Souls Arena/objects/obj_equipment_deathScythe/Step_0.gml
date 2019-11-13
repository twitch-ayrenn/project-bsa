/// @description Insert description here
var target = instance_nearest(x,y,par_enemy);
dmg = global.deathScyhteDamage;
if (instance_exists(global.player))
{
	x = global.player.x;
	y = global.player.y;
}
if (state == MeleeWeaponStates.idle)
{
	image_angle = global.player.direction-135+180;
	image_index = 0;
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
	image_angle += spinSpeed/1.5;
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
		
		var amountHealed = global.damage*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		with (obj_allPlayer)
		{
			hp += global.damage*global.lifeSteal;
		}
		
		alarm[1] = (1)*30;
	}
}
