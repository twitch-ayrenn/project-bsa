/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y,global.player))
{
	obj_allBoss.hp = clamp(obj_allBoss.hp+obj_allBoss.healingAmount,0,obj_allBoss.maxHp);
}
if (destroy == true)
{
	destroy = false;
	
	alarm[0] = (destroyTime);
}