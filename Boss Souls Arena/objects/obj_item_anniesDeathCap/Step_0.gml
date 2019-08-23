/// @description Insert description here
// You can write your code in this editor
depth = obj_player.depth-1;
x = obj_player.x-9;
y = obj_player.y-11;
if (rainEffect == true)
{
	rainEffect = false;
	var enemy = par_enemy;
	if (instance_exists(enemy))
	{
		with (enemy)
		{
			var damageDealt = global.damage;
			var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),depth-10,obj_textMaker);
			damageText.color = c_white;
			damageText.text = damageDealt;
			hp -= global.damage;
		}
	}
	
	var amountHealed = (obj_player.maxHp*0.04)*global.bookOfHealingHealBoost;
	var healText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	healText.color = c_lime;
	healText.text = amountHealed;
	with (obj_player)
	{
		hp += (obj_player.maxHp*0.04)*global.bookOfHealingHealBoost;
	}
	alarm[0] = rainEffectTime;
}