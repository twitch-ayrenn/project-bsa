/// @description Cooldwon
if (chooseAnAttack == false){chooseAnAttack = true;}
speed = 0; 
moveSpeed = normalMoveSpeed;
pointX = choose(60,0,-60);
pointY = choose(60,-60);
if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
{
	if (instance_exists(obj_enemyProjectile))
	{
		var destroyBeam = instance_nearest(x,y,obj_enemyProjectile);
		if (destroyBeam.sprite_index == spr_beam)
		{
			instance_destroy(destroyBeam);	
		}
	}
}
if (gameMaster.chosenBoss == Boss.TheMadWitches)
{
	var doOnce = true;
	if (position == 1 && doOnce == true){position = choose(2,3);doOnce = false;}
	if (position == 2 && doOnce == true){position = choose(1,3);doOnce = false;}
	if (position == 3 && doOnce == true){position = choose(2,1);doOnce = false;}
	if (position == 1)
	{
		beamSprite = spr_boss_theGreenWitch_beam;
		teleportSprite = spr_boss_theGreenWitch_teleport;
		rapidFireSprite = spr_boss_theGreenWitch_rapidFire;
		gooSprite = spr_boss_theGreenWitch_goo;
	}
	if (position == 2)
	{
		beamSprite = spr_theYellowWitch_beam;
		teleportSprite = spr_theYellowWitch_teleport;
		rapidFireSprite = spr_theYellowWitch_rapidFire;
		gooSprite = spr_theYellowWitch_goo;
	}
	if (position == 3)
	{
		beamSprite = spr_theOrangeWitch_beam;
		teleportSprite = spr_theOrangeWitch_teleport;
		rapidFireSprite = spr_theOrangeWitch_rapidFire;
		gooSprite = spr_theOrangeWitch_goo;
	}
}
if (gameMaster.chosenBoss == Boss.DeathKnight)
{
	with(obj_bossMeleeWeapon)
	{
		state = MeleeWeaponStates.idle;
	}
}