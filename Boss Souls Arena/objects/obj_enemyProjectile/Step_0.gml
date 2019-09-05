/// @description Insert description here
// You can write your code in this editor
depth = -y-97;
if (chase == true)
{
	move_towards_point(obj_allPlayer.x,obj_allPlayer.y,obj_allPlayer.actualSpeed*1.3);
	image_angle = direction+90;
}	
if (sprite_index == spr_gooGround){depth = -5;}
if (sprite_index == spr_bloodKlott){image_angle -= 30;}
stacks++;
if (destroy == true)
{
	destroy = false;
	alarm[0] = range;
}
var target = obj_allPlayer;
if (place_meeting(x,y,target) && sprite_index != spr_gooGround && global.iFrame == false)
{
	var damageToTarget = clamp(global.bossDamage*(clamp((obj_allPlayer.hp/obj_allPlayer.maxHp),0.5,1)),1,0.85*(obj_allPlayer.hp));
	var damageText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	obj_allPlayer.hp -= damageToTarget;
	if (sprite_index == spr_fireBall && image_xscale == 3){obj_allPlayer.hp -= damageToTarget*2;}
	if(sprite_index == spr_bloodKlott && gameMaster.chosenBoss == Boss.BloodZombie)
	{
		var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
		//Main
		gooGround.direction = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y);
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
		var damageToTarget = clamp(global.bossDamage*(clamp((obj_allPlayer.hp/obj_allPlayer.maxHp),0.5,1)),1,0.85*(obj_allPlayer.hp));
		var damageText = instance_create_depth(obj_allPlayer.x+irandom_range(-8,8),obj_allPlayer.y+irandom_range(-5,5),obj_allPlayer.depth-10,obj_textMaker);
		damageText.color = c_maroon;
		damageText.text = damageToTarget;
		obj_allPlayer.hp -= damageToTarget;
	}
	stacks = 0;
}