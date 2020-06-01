/// @description Insert description here
// You can write your code in this editor
x = obj_allPlayer.x;
y = obj_allPlayer.y;
if (gameMaster.chosenClass == Character.Pyromancer){y =  global.player.y+6;}
depth = obj_allPlayer.depth+1;

if (instance_exists(obj_equipment_corruptionBeam) == false)
{
	instance_destroy();
}
