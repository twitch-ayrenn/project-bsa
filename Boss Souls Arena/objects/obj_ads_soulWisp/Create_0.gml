/// @description Insert description here
// You can write your code in this editor
randomize();
hp = 50*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
damage = 10*(1 +(global.playerLevel/50))*global.dD;
shoot = true;
runOnce = true;
wispSize = 0.5
sizeX = 0.5;
sizeY = 0.5;
firerate = 60;
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);