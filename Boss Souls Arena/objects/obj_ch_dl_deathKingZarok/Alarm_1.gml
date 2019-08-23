/// @description Summon
//
summon = true;
if (phase == 1)
{
	var bossSummon = choose(1,2,3);
	if (bossSummon == 1)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_redWitch);
	}
	if (bossSummon == 2)
	{
		var vampire = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_vampire);
	}
	if (bossSummon == 3)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_zombie);
	}
}
if (phase == 2)
{
	var bossSummon = choose(1,2,3,4);
	if (bossSummon == 1)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_redWitch);
	}
	if (bossSummon == 2)
	{
		var vampire = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_vampire);
	}
	if (bossSummon == 3)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_zombie);
	}
	if (bossSummon == 4)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_bigWisp);
		witch.image_blend = c_maroon;
	}
}
if (phase == 3 || phase == 4)
{
	var bossSummon = choose(1,2,3,4,5);
	if (bossSummon == 1)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_redWitch);
	}
	if (bossSummon == 2)
	{
		var vampire = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_vampire);
	}
	if (bossSummon == 3)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_zombie);
	}
	if (bossSummon == 4)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_bigWisp);
		witch.image_blend = c_maroon;
	}
	if (bossSummon == 5)
	{
		var witch = instance_create_depth(x+irandom_range(-100,100),y+irandom_range(-100,100),-y,obj_ads_gravekeeper);
	}
}