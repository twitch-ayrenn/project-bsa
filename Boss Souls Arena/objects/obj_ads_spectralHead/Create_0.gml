/// @description Insert description here
// You can write your code in this editor
randomize();
hp = 250*(1 +(global.playerLevel/50));
maxHp = hp;
damage = 10;
shoot = true;
runOnce = true;
wispSize = 1.5;
sizeX = 1.5;
sizeY = 1.5;
firerate = (3)*choose(25,30,35);
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);