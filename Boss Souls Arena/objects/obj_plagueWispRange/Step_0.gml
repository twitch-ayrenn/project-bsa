/// @description Insert description here
depth = -5;
if (instance_exists(objectToFollow))
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}
with (global.player)
{
	if(place_meeting(x,y,obj_plagueWispRange))
	{
		plagueSpeed = 1.25 + 0.1*(gameMaster.bonusConjur/100);
	}
	if !(place_meeting(x,y,obj_plagueWispRange))
	{
		plagueSpeed = 1;
	}
}
if(place_meeting(x,y,global.player))
{
	image_index = 1;	
}
if !(place_meeting(x,y,global.player))
{
	image_index = 0;
}
if (dealDamage == true)
{
	dealDamage = false;
	with(obj_allBoss)
	{
		if (place_meeting(x,y,obj_plagueWispRange))
		{
			var damageDealt = global.damage*2;
			var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage*2;
			
			var amountHealed = global.damage*global.lifeSteal*2;
			var healText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			with (global.player)
			{
				hp += global.damage*global.lifeSteal*2;
			}
		}
	}
	alarm[0] = (1)*30;
}