/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenBoss == Bosses.The_Fat_Zombie)
{
	if (instance_exists(obj_theFatPrinceStatue) == false)
	{
		var statue = instance_create_depth(x,y,depth,obj_theFatPrinceStatue)	
		statue.image_xscale = 1.6;
		statue.image_yscale = 1.6;
	}
}
if (gameMaster.chosenBoss == Bosses.The_Wisp_Mother)
{
	if (instance_exists(obj_wispStatue) == false)
	{
		var statue = instance_create_depth(x,y,depth,obj_wispStatue)	
		statue.image_xscale = 1.6;
		statue.image_yscale = 1.6;
	}
}
if (gameMaster.chosenBoss == Bosses.The_Blood_Prince)
{
	if (instance_exists(obj_bloodPrinceStatue) == false)
	{
		var statue = instance_create_depth(x,y,depth,obj_bloodPrinceStatue)	
		statue.image_xscale = 1.6;
		statue.image_yscale = 1.6;
	}
}
if (gameMaster.chosenBoss == Bosses.The_GraveKeeper)
{
	if (instance_exists(obj_theGraveKeeperStatue) == false)
	{
		var statue = instance_create_depth(x,y,depth,obj_theGraveKeeperStatue)	
		statue.image_xscale = 1.6;
		statue.image_yscale = 1.6;
	}
}
if (gameMaster.chosenBoss == Bosses.The_Mad_Witches)
{
	if (instance_exists(obj_theMadWitchStatue) == false)
	{
		var statue = instance_create_depth(x,y,depth,obj_theMadWitchStatue)	
		statue.image_xscale = 1.6;
		statue.image_yscale = 1.6;
	}
}
