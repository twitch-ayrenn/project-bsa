/// @description Insert description here
//first time it has 2 fases, second it has 3 fases, 
//third has 4 phases and fourth time it has 4 phases and three of it 
hp = 450*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
fase = 1;
oneTimeVars = true;
sizeX = 1.5;
sizeY = 1.5;
bossSize = 1.6;////fase vars
//fase 1
fase1Hp = 450*(1 +(global.playerLevel/50))*global.dD;
fase1Damage = (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/50))*global.dD;
fase1Firerate = (1)*30;
fase1Shoot = true;
fase1Speed = 1.5;
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);