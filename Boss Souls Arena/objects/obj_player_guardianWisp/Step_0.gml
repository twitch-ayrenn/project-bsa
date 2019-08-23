/// @description 
//vars
if (hp > maxHp){hp = maxHp;}
depth = -y;
if (runOnce == true)
{
	runOnce = false;
	hp = global.healto;
	maxHp = hp;
}
////movement
actualSpeed = moveSpeed;
if (keyboard_check(ord("W")) && place_free(x,y-actualSpeed))
{
	y -= actualSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("S"))&& place_free(x,y+actualSpeed))
{
	y += actualSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("D"))&& place_free(x+actualSpeed,y))
{
	x += actualSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("A")) && place_free(x-actualSpeed,y))
{
	x -= actualSpeed;
	state = States.Walking;
}
if (!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S"))) && !(keyboard_check(ord("D"))) && !(keyboard_check(ord("A"))))
{
	state = States.Idle;
}
////states thing
if (mouse_x > x)
{
	image_xscale = playerSize;	
}
if (mouse_x < x)
{
	image_xscale = -playerSize;	
}
image_yscale = playerSize;
////damage
//meele damage
if (instance_exists(par_enemy))
{
	var nearestEnemy = instance_nearest(x,y,par_enemy);
	if (distance_to_point(nearestEnemy.x,nearestEnemy.y) <= 5 && canTakeMeeleDamage == true)
	{
		var damageToTarget = 4;
		var damageText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		canTakeMeeleDamage = false;
		hp -= 4;
		alarm[2] = canTakeMeeleDamageTime;
	}
}
////class abilites
if (mouse_check_button(mb_left) && canAttack == true)
{
	canAttack = false;
	
	var sprayShot = instance_create_depth(x,y,depth+1,obj_guardianShot);
	sprayShot.direction = point_direction(x,y,mouse_x,mouse_y);
	sprayShot.speed = 6;
	sprayShot.image_angle = point_direction(x,y,mouse_x,mouse_y)+90;
	sprayShot.image_xscale = 0.9;
	sprayShot.image_yscale = 0.9;
	
	alarm[0] = firerate;
}
if (mouse_check_button_released(mb_right) && canAttack2 == true)
{
	canAttack2 = false;

	var angle = 0;
	repeat(16)
	{
		var sprayShot = instance_create_depth(x,y,depth+1,obj_guardianShot);
			sprayShot.direction = angle;
			sprayShot.speed = 4;
			sprayShot.image_angle = angle+90;
			sprayShot.image_xscale = 0.75;
			sprayShot.image_yscale = 0.75;	
			angle += 360/16;
	}

	if (hp >= 0.4*maxHp){hp -= 6;}
	alarm[1] = firerate2;
}

