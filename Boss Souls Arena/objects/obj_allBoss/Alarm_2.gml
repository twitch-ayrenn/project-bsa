/// @description Insert rapidFire
canRapidAttack = true;
#region Angel Knight Oscar
if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
{
	var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
	//Main
	beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
	//Visual
	beam.image_alpha = 0.85;
	beam.image_blend = c_aqua;
	beam.sprite_index = spr_beam;
	beam.image_xscale = 0.25;
	beam.image_yscale = 30;
	beam.maxSize = 1.35;
	beam.minSize = 0.25;
	beam.stickOn = true;
	beam.range = 2*30;
	beam.effectType = Effect.NoEffect;
	drawArea = false; 
}
#endregion
#region Bloodarmy General
if (gameMaster.chosenBoss == Boss.BloodKnightDavid)
{
	var beam = instance_create_depth(x,y,depth+1,obj_enemyProjectile);
	//Main
	beam.image_angle = point_direction(x,y,obj_allPlayer.x,obj_allPlayer.y)-90;
	//Visual
	beam.image_alpha = 0.85;
	beam.image_blend = c_aqua;
	beam.sprite_index = spr_beam;
	beam.image_xscale = 0.25;
	beam.image_yscale = 30;
	beam.maxSize = 1.35;
	beam.minSize = 0.25;
	beam.stickOn = true;
	beam.range = 2*30;
	beam.effectType = Effect.NoEffect;
	drawArea = false; 
}
#endregion