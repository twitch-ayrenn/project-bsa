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
if (color == c_aqua)
{
	image_blend = color;
	hp = 10*choose(0.6,1,1.4)*(1 +(global.playerLevel/100));;
	maxHp = hp;
	summonTime = (12)*choose(25,30,35);
	summon = false;
	summonAmount = 2;
}
if (color == c_red)
{
	image_blend = color;
	hp = 20*choose(0.6,1,1.4)*(1 +(global.playerLevel/100));;
	maxHp = hp;
	firerate = (2)*choose(25,30,35);
	damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/100));
	shoot = true;
}
if (color == c_lime)
{
	image_blend = color;
	hp = 15*choose(0.6,1,1.4)*(1 +(global.playerLevel/100));;
	maxHp = hp;
	firerate = (2)*choose(25,30,35);
	shoot = true;
}
if (color == c_purple)
{
	image_blend = color;
	hp = 15*choose(0.6,1,1.4)*(1 +(global.playerLevel/100));;
	maxHp = hp;
	firerate = (4)*choose(25,30,35);
	damage = (3 + obj_player.hp*0.006)*(1 +(global.playerLevel/100));
	shoot = true;
}
pointX = obj_player.x + choose(-10,-5,0,5,10);
pointY = obj_player.y + choose(-10,-5,0,5,10);