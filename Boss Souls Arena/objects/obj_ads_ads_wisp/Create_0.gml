/// @description Insert description here
// You can write your code in this editor
randomize();
hp = 15;
maxHp = hp;
color = c_white;
summon = false;
shoot = false;
runOnce = true;
sizeX = 0.5;
sizeY = 0.5;
summonAmount = 0;
if (color == c_maroon)
{
	image_blend = color;
	hp = 100*choose(0.6,1,1.4)*(1 +(global.playerLevel/50))*global.dD;
	maxHp = hp;
	firerate = (2)*choose(25,30,35);
	damage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/50))*global.dD;
	shoot = true;
}
if (color == c_green)
{
	image_blend = color;
	hp = 75*choose(0.6,1,1.4)*(1 +(global.playerLevel/50))*global.dD;
	maxHp = hp;
	firerate = (2)*choose(25,30,35);
	shoot = true;
}
pointX = obj_player.x + choose(-10,-5,0,5,10);
pointY = obj_player.y + choose(-10,-5,0,5,10);