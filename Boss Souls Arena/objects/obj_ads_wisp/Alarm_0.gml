/// @description Insert description here
// You can write your code in this editor
summon = false;
if (summonAmount > 0)
{
	var wisp = instance_create_depth(x+choose(-30,30),y+choose(-30,30),1,obj_ads_wisp);
	wisp.color = choose(c_red,c_purple);
	summonAmount -= 1;
}
