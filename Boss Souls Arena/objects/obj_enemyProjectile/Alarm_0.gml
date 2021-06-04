/// @description Insert description here
if (boomerang == false)
{
	instance_destroy();	
}
if (boomerang == true)
{
	goToBoss = true;
	speed *= 1.25;
}
#region BloodZombie Pool
if(gameMaster.chosenBoss == Boss.SlimeQueen)
{
	var gooGround = instance_create_depth(x,y,-5,obj_enemyProjectile);
	//Main
	gooGround.speed = 0;
	//Visual
	gooGround.image_alpha = 1;
	gooGround.image_blend = c_green;
	gooGround.sprite_index = spr_gooGround;
	gooGround.image_xscale = 0.18;
	gooGround.image_yscale = 0.18;
	with(obj_camera){shake_remain = 3;}
	gooGround.destroy = false;
}
#endregion