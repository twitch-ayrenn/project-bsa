var target = global.player;
stacks++;
image_angle -= 3;
dmg = clamp(global.bossDamage*(clamp((target.hp/target.maxHp),0.5,1)),1,0.8*(target.maxHp));
if (instance_exists(obj_allBoss))
{
	depth = obj_allBoss.depth;
	x = obj_allBoss.x;
	y = obj_allBoss.y;
}
else
{
	instance_destroy();	
}
if (stacks >= (0.25)*30 && place_meeting(x,y,target) && global.iFrame == false)
{
	var damageToTarget = dmg;
	var damageText = instance_create_depth(target.x+irandom_range(-8,8),target.y+irandom_range(-5,5),target.depth-10,obj_textMaker);
	damageText.color = c_maroon;
	damageText.text = damageToTarget;
	target.hp -= damageToTarget;
	stacks = 0;
}