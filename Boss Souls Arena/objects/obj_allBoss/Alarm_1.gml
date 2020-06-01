/// @description Cooldwon
if (chooseAnAttack == false){chooseAnAttack = true;}
speed = 0; 
moveSpeed = normalMoveSpeed;
pointX = choose(60,0,-60);
pointY = choose(60,-60);
#region Angel Slayer
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
#endregion
#region KnightWitch yi
if (gameMaster.chosenBoss == Boss.KnightWitchYi)
{
	global.playerBossSlow = 1;
}
#endregion
#region Death Knight
if (gameMaster.chosenBoss == Boss.DeathKnight)
{
	with(obj_bossMeleeWeapon)
	{
		state = MeleeWeaponStates.idle;
	}
}
#endregion
#region Gravekeeper
if (gameMaster.chosenBoss == Boss.Gravekeeper)
{
	rapidFireStacks = 0;
	with(obj_bossMeleeWeapon)
	{
		state = MeleeWeaponStates.idle;
	}
}
#endregion
#region Bloodarmy General
if (gameMaster.chosenBoss == Boss.BloodKnightDavid && phase == 1)
{
	with(obj_spinBeam)
	{
		spinSpeed = 0.75;
	}
}
#endregion
#region DeathKing
if (gameMaster.chosenBoss == Boss.DeathKing || gameMaster.chosenBoss == Boss.ArenaKing)
{ 
	canTeleport = true;	
}

#endregion