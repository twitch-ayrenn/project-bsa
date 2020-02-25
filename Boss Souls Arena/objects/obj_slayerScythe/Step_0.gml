/// @description Insert description here
var target = instance_nearest(x,y,par_enemy);
dmg = global.damage*7.5;
if (instance_exists(global.player))
{
	x = global.player.x;
	y = global.player.y;
}
if (state == MeleeWeaponStates.idle)
{
	image_angle = global.player.weaponDirection-135+180;
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
		with(obj_camera){shake_remain += 1.25;}
		
		var amountHealed = dmg*global.lifeSteal;
		var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		healText.color = c_lime;
		healText.text = amountHealed;
		global.player.hp += dmg*global.lifeSteal;
		
		alarm[1] = (0.25)*30;
	}
}