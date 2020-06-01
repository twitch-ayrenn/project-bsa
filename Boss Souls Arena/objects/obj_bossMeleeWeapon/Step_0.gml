/// @description Insert description here
var target = global.player;
dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));

var demonShade = instance_create_depth(x,y,depth,obj_particle_dash_characterFollow);
	demonShade.fadeSpeed = 0.25;
	demonShade.sprite_index = sprite_index;
	demonShade.image_xscale = image_xscale;
	demonShade.image_yscale = image_yscale;
	demonShade.image_angle = image_angle;
	demonShade.image_alpha = image_alpha/2;
	demonShade.image_index = image_index;
if (instance_exists(obj_allBoss))
{
	x = obj_allBoss.x;
	y = obj_allBoss.y;
	image_alpha = obj_allBoss.image_alpha;
}
if (instance_exists(obj_allBoss) == false)
{
	instance_destroy();
}
if (state == MeleeWeaponStates.idle)
{
	image_angle = obj_allBoss.direction-135+180;
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
		alarm[0] = (0.15)*30;
		image_index = 0;
	}
	if (spinTimes <= 0 && canSpin == true)
	{
		state = MeleeWeaponStates.idle;
		doSpin = false;
	}
	image_index = 1;
}
if (state == MeleeWeaponStates.SpinChase)
{
	image_angle += spinSpeed/1.5;
	if (gameMaster.chosenBoss = Boss.DeathKnight || gameMaster.chosenBoss = Boss.Gravekeeper){image_index = 1;}
}
if (state == MeleeWeaponStates.SpinOnce || state == MeleeWeaponStates.SpinChase)
{
	if (place_meeting(x,y,global.player) && canDealDamage == true)
	{
		canDealDamage = false;
		var damageToTarget = clamp(dmg,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
		
		alarm[1] = (1)*30;
	}
}
