/// @description Insert description here
// You can write your code in this editor
move_towards_point(obj_player.x,obj_player.y,5);
if (place_meeting(x,y,obj_player))
{
	var amountHealed = 2*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-5,5),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with(obj_player)
	{
		hp += 2*global.bookOfHealingHealBoost;
		if (global.selectedSoulWispItem ==  SoulWispItems.Life_Wisp)
		{
			if (global.lifeWispHpGained < 250)
			{
				maxHp += 1;
				global.lifeWispHpGained += 1;
			}
		}
	}
	if (global.selectedVampireItem == VampireBossItems.VampireBloodNecklace)
	{
		var bloodShot = instance_create_depth(obj_player.x,obj_player.y,-y-1000,obj_item_orbShot);
		bloodShot.direction = point_direction(x,y,mouse_x,mouse_y);
		bloodShot.speed = choose(5,6,7);
	}
	instance_destroy();
}