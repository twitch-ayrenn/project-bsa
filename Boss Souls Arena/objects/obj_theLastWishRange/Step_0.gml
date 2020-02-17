/// @description Insert description here
// You can write your code in this editor
depth = -5;
x = obj_equipment_theLastWish.x;
y = obj_equipment_theLastWish.y;
if (instance_exists(obj_allBoss))
{
	if (place_meeting(x,y,global.player))
	{
		global.damage = global.player.damageInCircle;
		global.lifeSteal = global.player.lifestealInCircle;
		image_index = 1;
	}
	else
	{
		global.damage = global.player.damageOutSideCircle;
		global.lifeSteal = global.player.lifestealOutsideCircle;
		image_index = 0;
	}
}
if (!place_meeting(x,y,global.player) && instance_exists(obj_allBoss) && global.player.meteorStun == 1 && global.iFrame == false)
{
	if (damage == true)
	{
		damage = false;
		
		var target = global.player;
		var damageToTarget = global.player.hp*0.15;
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
		
		alarm[0] = (1)*30;
	}
}