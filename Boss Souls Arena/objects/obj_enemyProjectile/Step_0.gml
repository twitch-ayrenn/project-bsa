/// @description Insert description here
#region vars
depth = -y-97;
if (sprite_index == spr_gooGround){depth = -5;}
var target = obj_allPlayer;
var dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));
stacks++;
#endregion
#region Visuals 
if (sprite_index == spr_bloodKlott){image_angle -= 30;}
#endregion
#region movement
if (chase == true)
{
	move_towards_point(target.x,target.y,target.actualSpeed*1.3);
	image_angle = direction+90;
}	
if (sprite_index == spr_beam){x = lockOn.x; y = lockOn.y;depth = lockOn.depth+1;}
#endregion
if (destroy == true)
{
	destroy = false;
	alarm[0] = range;
}
#region damage
if (place_meeting(x,y,target) && sprite_index != spr_gooGround && global.iFrame == false && sprite_index != spr_beam)
{
	var damageToTarget = clamp(dmg,1,0.8*(target.maxHp));
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget;
	if(sprite_index == spr_bloodKlott && gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,target.x,target.y);
		gooGround.speed = 0;
		gooGround.image_angle = irandom_range(0,360);
		//Visual
		gooGround.image_alpha = 1;
		gooGround.image_blend = c_maroon;
		gooGround.sprite_index = spr_gooGround;
		gooGround.image_xscale = 0.5;
		gooGround.image_yscale = 0.5;
		gooGround.destroy = false;
	}
	with (obj_camera){shake_remain += 2;}
	instance_destroy();
}
if (stacks >= (1)*30)
{
	if (place_meeting(x,y,target) && sprite_index == spr_gooGround && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	if (place_meeting(x,y,target) && sprite_index == spr_beam && global.iFrame == false)
	{
		var damageToTarget = clamp(dmg*3,1,0.8*(target.maxHp));
		var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		target.hp -= damageToTarget;
	}
	stacks = 0;
}
#endregion