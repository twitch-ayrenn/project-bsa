/// @description Insert description here
// vars
actualBackSpeed = obj_player.actualSpeed + backSpeed;
image_xscale = size;
image_yscale = size;
if (moving == true)
{
	timeFlew++;
	size = 1;
}
//rotate
image_angle -= 55;
//code
if (moving == false)
{
	stillStacks++;
	speed = 0;
	size = 0.6;
}
if (stillStacks >= (1*global.redWispRangeBoost)*30)
{
	moving = true;
}
if (state == AxeState.Forward && obj_player.hasEnpowerdAxe == true)
{
	sprite_index = spr_warriorAxe_enpowerd_heal;
}
if (state == AxeState.Back && obj_player.hasEnpowerdAxe == true)
{
	if (backSpeed == 5){sprite_index = spr_warriorAxe;}
	if (backSpeed == 10){sprite_index = spr_warriorAxe_enpowerd_fastBack;}
}
if (canPickUpAxe == false && timeFlew >= timeBeforeAxePickUp)
{
	canPickUpAxe = true;
}
if (canPickUpAxe == true && place_meeting(x,y,obj_player))
{
	with (obj_player)
	{
		hasAxe = true;
		hasEnpowerdAxe = false;
		hp += ((obj_warriorAxe.timeFlew)/5)*global.bookOfHealingHealBoost;
			var amountHealed = ((obj_warriorAxe.timeFlew)/5)*global.bookOfHealingHealBoost;
			var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
			healText.color = c_lime;
			healText.text = amountHealed;
		audio_stop_sound(snd_axethrow);
	}
	instance_destroy();
}
if (moving == true)
{
	if (timeFlew >= (0.8*global.redWispRangeBoost)*30 || hitEnemy == true)
	{
		speed = 0;
		move_towards_point(obj_player.x,obj_player.y,actualBackSpeed);
		canPickUpAxe = true;
		state = AxeState.Back;	
	}
}
var enemy = instance_nearest(x,y,par_enemy);
if (place_meeting(x,y,enemy))
{
	var damageDealt = global.damage*1.5;
	var damageText = instance_create_depth(enemy.x+irandom_range(-8,8),enemy.y+irandom_range(-5,5),enemy.depth-10,obj_textMaker);
	damageText.color = c_white;
	damageText.text = damageDealt;
	with (enemy)
	{	
		hp -= global.damage*1.5;
	}
	var amountHealed = global.damage*1.5*0.5*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += global.damage*1.5*0.5*global.bookOfHealingHealBoost;
	}
}


