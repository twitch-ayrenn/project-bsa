/// @description Insert description here
randomize();
state = 0;
image_xscale = 1;
image_yscale = 1;
shoot = true;
xExtra = choose(-28,-21,-14,-7,0,7,14,21,28);
yExtra = choose(-28,-21,-14,-7,0,7,14,21,28);
xExtra += choose(-2,-1,1,2);
yExtra += choose(-2,-1,1,2);
soldierType = choose(0,0,1,1,2);
if (soldierType == 0)
{
	walkSprite = spr_equipment_futuristicSoldier_walking;
	idleSprite = spr_equipment_futuristicSoldier_idle;
}
if (soldierType == 1)
{
	walkSprite = spr_equipment_futuristicSoldier2_walking;
	idleSprite = spr_equipment_futuristicSoldier2_idle;
}
if (soldierType == 2)
{
	walkSprite = spr_equipment_futuristicSoldier3_walking;
	idleSprite = spr_equipment_futuristicSoldier3_idle;
}