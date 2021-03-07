/// @description Insert description here
enum MeleeWeaponStates
{
	idle,
	SpinOnce,
	SpinChase,
	Strike,
}
state = 0;
spinTimes = 0;
canSpin = true;
doSpin = false;
spinSpeed = 30;
currentAngle = 0;
canDealDamage = true;
timeBeforeNextSpin = 0.15;
image_angle = 0;
