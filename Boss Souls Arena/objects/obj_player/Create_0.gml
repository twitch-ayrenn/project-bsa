/// @description vars
////// vars
randomize();
enum Class 
{
	No_Class,
	The_Mage,
	The_Warrior,
	The_Assasin,
	The_Shopkeeper,
	The_BloodKnight,
	The_GuardianWisp,
}
hp = 100;
hpRegenTime = 30;
hpRegenAmount = 1;
moveSpeed = 2;
actualSpeed = moveSpeed;
normalSpeed = moveSpeed;
diagonalSpeed = moveSpeed-1;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
global.damage = 0;
firerate = 30;
firerate2 = 30;
////class system
if (class == Class.No_Class)
{
	hp = 100;
	hpRegenAmount = 1;
	hpRegenTime = 15;
	moveSpeed = 3;
	normalSpeed = moveSpeed;
	diagonalSpeed = moveSpeed-2;
	global.damage = 1.2;
	firerate = 10;
	firerate2 = 5;
	idleSprite = spr_player_theMage;
	walkSprite = spr_player_theMage_walking;
	playerSize = 0.9;
}
maxHp = hp;
////states
state = 0;
enum States
{
	Idle,
	Walking,
	Death,
}
state = States.Idle;