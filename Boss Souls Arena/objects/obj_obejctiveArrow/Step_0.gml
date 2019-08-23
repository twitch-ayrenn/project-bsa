/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
depth = -y-1000;
image_xscale = 0.5;
image_yscale = 0.5;
if (gameMaster.chosenBoss == Bosses.The_Fat_Zombie && distance_to_object(obj_theFatPrinceStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theFatPrinceStatue.x,obj_theFatPrinceStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Fat_Zombie && distance_to_object(obj_theFatPrinceStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Wisp_Mother && distance_to_object(obj_wispStatue) > 10)
{
	image_angle = point_direction(x,y,obj_wispStatue.x,obj_wispStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Wisp_Mother && distance_to_object(obj_wispStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Blood_Prince && distance_to_object(obj_bloodPrinceStatue) > 10)
{
	image_angle = point_direction(x,y,obj_bloodPrinceStatue.x,obj_bloodPrinceStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Blood_Prince && distance_to_object(obj_bloodPrinceStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Mad_Witches && distance_to_object(obj_theMadWitchStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theMadWitchStatue.x,obj_theMadWitchStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Mad_Witches && distance_to_object(obj_theMadWitchStatue) <= 10)
{
	image_alpha = 0;
}	
if (gameMaster.chosenBoss == Bosses.The_GraveKeeper && distance_to_object(obj_theGraveKeeperStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theGraveKeeperStatue.x,obj_theGraveKeeperStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_GraveKeeper && distance_to_object(obj_theGraveKeeperStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Infernal_Wisp && distance_to_object(obj_theInfernalStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theInfernalStatue.x,obj_theInfernalStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Infernal_Wisp && distance_to_object(obj_theInfernalStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Flame_Gate && distance_to_object(obj_theFlameGateStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theFlameGateStatue.x,obj_theFlameGateStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Flame_Gate && distance_to_object(obj_theFlameGateStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.The_Soul_Wisp && distance_to_object(obj_theSoulWispStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theSoulWispStatue.x,obj_theSoulWispStatue.y);
	image_alpha = 0.7;
}	
if (gameMaster.chosenBoss == Bosses.The_Soul_Wisp && distance_to_object(obj_theSoulWispStatue) <= 10)
{
	image_alpha = 0;
}	
if (gameMaster.chosenBoss == Bosses.The_Soul_Guards && distance_to_object(obj_theSoulGuardStatue) > 10)
{
	image_angle = point_direction(x,y,obj_theSoulGuardStatue.x,obj_theSoulGuardStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.The_Soul_Guards && distance_to_object(obj_theSoulGuardStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.Death_General_Zarodil && distance_to_object(obj_deathGeneralZaordilStatue) > 10)
{
	image_angle = point_direction(x,y,obj_deathGeneralZaordilStatue.x,obj_deathGeneralZaordilStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.Death_General_Zarodil && distance_to_object(obj_deathGeneralZaordilStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.Death_Queen_Zeria && distance_to_object(obj_deathQueenZeriaStatue) > 10)
{
	image_angle = point_direction(x,y,obj_deathQueenZeriaStatue.x,obj_deathQueenZeriaStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.Death_Queen_Zeria && distance_to_object(obj_deathQueenZeriaStatue) <= 10)
{
	image_alpha = 0;
}
if (gameMaster.chosenBoss == Bosses.Death_King_Zarok && distance_to_object(obj_deathKingZarokStatue) > 10)
{
	image_angle = point_direction(x,y,obj_deathKingZarokStatue.x,obj_deathKingZarokStatue.y);
	image_alpha = 0.7;
}
if (gameMaster.chosenBoss == Bosses.Death_King_Zarok && distance_to_object(obj_deathKingZarokStatue) <= 10)
{
	image_alpha = 0;
}
if (instance_exists(par_enemy))
{
	image_alpha = 0;
}