/// @description Insert description here
// You can write your code in this editor
depth = -6;
image_alpha = 0.65;
image_xscale = 1;
image_yscale = image_xscale;
x = global.player.x;
y = global.player.y;
image_index = damageStacks;
if (dealDamage == true)
{
	dealDamage = false;
	
	if (place_meeting(x,y,par_enemy)){damageStacks = clamp(damageStacks+1,0,7);}
	if (!place_meeting(x,y,par_enemy)){damageStacks = clamp(damageStacks-1,0,7);}
	
	alarm[0] = (1)*30;
}
if (damageStacks == 7)
{
	damageStacks = 0;
	with(par_enemy)
	{
		if (place_meeting(x,y,obj_equipment_crownGround))
		{
			var damageDealt = global.player.maxHp*0.07;
			var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= damageDealt;
			
			var amountHealed = damageDealt*global.lifeSteal;
			var healText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
			global.player.hp += amountHealed;
		}
	}
}