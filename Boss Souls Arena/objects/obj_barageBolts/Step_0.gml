depth = -y-100;
image_alpha -= 0.05;
clamp(image_alpha,0.25,1);
if (destroy == true)
{
	destroy = false;
	alarm[0] = (timeToDestroy);
}
if (place_meeting(x,y,obj_noGoZone)){instance_destroy();}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{	
	var damageDealt = global.damage*0.25;
	var damageText = instance_create_depth(enemy.x+irandom_range(-20,20),enemy.y+irandom_range(-20,20),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*0.25;
	}
	
	with (obj_allPlayer)
	{
		hp += global.damage*global.lifeSteal*0.25;
	}
	
	instance_destroy();
}