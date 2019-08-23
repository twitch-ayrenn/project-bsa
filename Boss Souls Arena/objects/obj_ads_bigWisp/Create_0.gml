/// @description vars
////all vars
hp = 350;
maxHp = hp;
fase = 1;
oneTimeVars = true;
sizeX = 1.5;
sizeY = 1.5;
wispSize = 1.5;////fase vars
faseColor = c_maroon;
//fase1
fase1Hp = 350*(1 +(global.playerLevel/50))*global.dD;
fase1Damage = (12 + obj_player.hp*0.012)*(1 +(global.playerLevel/50))*global.dD;
fase1SummonTime = (4)*30;
fase1Summon = true;
fase1Firerate = (1.5)*30;
fase1Shoot = true;
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);