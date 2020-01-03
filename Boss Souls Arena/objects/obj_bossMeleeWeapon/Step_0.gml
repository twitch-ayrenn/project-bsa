/// @description Insert description here
var target = global.player;
image_alpha = obj_allBoss.image_alpha;
dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));
if (instance_exists(obj_allBoss))
{
	x = obj_allBoss.x;
	y = obj_allBoss.y;
}
if (state == MeleeWeaponStates.idle)
{
	image_angle = obj_allBoss.direction-135+180;
	if (gameMaster.chosenBoss == Boss.Gravekeeper){image_angle = 0;}
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
		if (gameMaster.chosenBoss = Boss.DeathKnight){image_index = 1;}
	}
	if (image_angle < currentAngle+360)
	{
		alarm[0] = (0.15)*30;
		if (gameMaster.chosenBoss = Boss.DeathKnight){image_index = 0;}
	}
	if (spinTimes <= 0 && canSpin == true)
	{
		state = MeleeWeaponStates.idle
		doSpin = false;
	}
	if (gameMaster.chosenBoss = Boss.DeathKnight){image_index = 1;}
}
if (state == MeleeWeaponStates.SpinChase)
{
	image_angle += spinSpeed/1.5;
	if (gameMaster.chosenBoss = Boss.DeathKnight){image_index = 1;}
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
