/// @description Insert description here
randomize();
enum CrowdType
{
	Demon,
	CloakedDoodle,
	DoodleWithPants,
	Slime,
	Wisp,
	Knight,
}
type = choose(CrowdType.Demon,CrowdType.DoodleWithPants,CrowdType.CloakedDoodle);
alpha = choose(1,1,1,1,0.75);
image_alpha = alpha;
//Demons
if (type = CrowdType.Demon)
{
	sprite_index = spr_crowd_demon_body;
	bodyColor = choose(make_color_rgb(19,19,19),make_color_rgb(25,0,0));
	image_blend = bodyColor;
	eyeSprite = spr_crowd_demon_eye_1;
	eyeColor = choose(c_green,c_blue,c_teal,c_purple,c_maroon,c_blue,c_silver,c_orange);
	horns = choose(spr_crowd_demon_horn_1,spr_crowd_demon_horn_2);
}
if (type = CrowdType.DoodleWithPants)
{
	sprite_index = spr_crowd_body_new_1;
	bodyColor = choose(c_navy,c_teal,c_purple,c_maroon,global.darkYellow,global.paleViolet,global.skyBlue);
	image_blend = bodyColor;
	eyeSprite = choose(spr_crowd_eye_1,spr_crowd_eye_2,spr_crowd_eye_3,spr_crowd_eye_4);
	eyeColor = bodyColor;
	pants = choose(spr_crowd_pants_1);
	pantsColor = choose(make_color_rgb(40,40,40));
}
if (type = CrowdType.CloakedDoodle)
{
	sprite_index = spr_crowd_cloaked_1;
	bodyColor = choose(c_aqua,c_fuchsia,c_purple,c_red,global.skyBlue);
	image_blend = bodyColor;
	alpha = 0.75;
	image_alpha = alpha;
}
image_index = choose(0,1);
followEyeObject = choose(global.player,obj_allBoss,obj_allCursor);
chanceToCome = 0;
probability = irandom_range(0,100);
if (gameMaster.chosenClass == Character.TheRedWarrior){chanceToCome = gameMaster.theRedWarriorProgress*4;}
if (gameMaster.chosenClass == Character.ShadowAssassin){chanceToCome = gameMaster.assassinProgress*4;}
if (gameMaster.chosenClass == Character.Pyromancer){chanceToCome = gameMaster.pyromancerProgress*4;}
if (gameMaster.chosenClass == Character.Shopkeeper){chanceToCome = gameMaster.shopkeeperProgress*4;}
if (gameMaster.chosenClass == Character.BloodKnight){chanceToCome = gameMaster.bloodKnightProgress*4;}
if (gameMaster.chosenClass == Character.RainbowSlime){chanceToCome = gameMaster.rainbowSlimeProgress*4;}
if (gameMaster.chosenClass == Character.AgentOfGod){chanceToCome = gameMaster.agentOfGodProgress*4;}
if (gameMaster.chosenClass == Character.AngelSlayer){chanceToCome = gameMaster.angelSlayerProgress*4;}
if (gameMaster.chosenClass == Character.PlaugeWalker){chanceToCome = gameMaster.plaugeWalkerProgress*4;}
if (gameMaster.chosenClass == Character.Graveling){chanceToCome = gameMaster.gravelingProgress*4;}
chanceToCome += 10;
if (probability >= chanceToCome)
{
	instance_destroy();
}