/// @description Insert description here
var nearestFireBolt = 0; if(instance_exists(obj_firebolt)){nearestFireBolt = instance_nearest(x,y,obj_firebolt);}
depth = -y+20;
if (room == rm_arena)
{
	depth = -900-y
}
if (place_meeting(x-5,y,obj_daggerProjectile) || place_meeting(x-5,y,nearestFireBolt) && nearestFireBolt.isAttack
||  place_meeting(x-5,y,obj_batProjectile) || place_meeting(x-5,y,obj_holyFireBolt) 
|| place_meeting(x,y,obj_slayerScythe) && obj_slayerScythe.state == MeleeWeaponStates.SpinOnce ||
place_meeting(x-5,y,obj_graveBolt) || place_meeting(x-5,y,obj_leech))
{
	instance_destroy();
}