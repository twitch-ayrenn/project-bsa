/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
if (sprite_index == spr_bloodKlott){image_angle -= 30;}
if (destroy == true)
{
	destroy = false;
	alarm[0] = range;
}
var target = obj_allPlayer;
if (place_meeting(x,y,target))
{
	var damageToTarget = clamp(global.bossDamage*(clamp((obj_allPlayer.hp/obj_allPlayer.maxHp),0.5,1)),1,0.85*(obj_allPlayer.hp));
	var damageText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	obj_allPlayer.hp -= damageToTarget;
	if(sprite_index == spr_bloodKlott && gameMaster.chosenBoss == Boss.BloodZombie)
	{
		instance_create_depth(x,y,98,obj_gooGround);
	}
	with (obj_camera){shake_remain += 2;}
	instance_destroy();
}