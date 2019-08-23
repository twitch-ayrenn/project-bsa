/// @description 
//vars
if (hp > maxHp){hp = maxHp;}
depth = -y;
////movement
if (keyboard_check(ord("W")) && place_free(x,y-moveSpeed))
{
	y -= moveSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("S"))&& place_free(x,y+moveSpeed))
{
	y += moveSpeed;

	state = States.Walking;
}
if (keyboard_check(ord("D"))&& place_free(x+moveSpeed,y))
{
	x += moveSpeed;
	state = States.Walking;
}
if (keyboard_check(ord("A")) && place_free(x-moveSpeed,y))
{
	x -= moveSpeed;
	state = States.Walking;
}
if (!(keyboard_check(ord("W"))) && !(keyboard_check(ord("S"))) && !(keyboard_check(ord("D"))) && !(keyboard_check(ord("A"))))
{
	state = States.Idle;
}
////states thing
if (state == States.Idle)
{
	sprite_index = idleSprite;	
}
if (state == States.Walking)
{
	sprite_index = walkSprite;
}
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

		canTakeMeeleDamage = false;
		hp -= 8;
		alarm[2] = canTakeMeeleDamageTime;
	}
}
if(hp <= 0){game_restart();}
////class abilites
if (mouse_check_button_released(mb_left) && canAttack == true)
{		
	
}
if (mouse_check_button(mb_left) && canAttack == true)
{	
	alarm[0] = firerate;
}
if (mouse_check_button_released(mb_right) && canAttack2 == true)
{	
	alarm[1] = firerate2;
}
//setting

