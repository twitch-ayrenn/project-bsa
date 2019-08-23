/// @description Insert description here
// You can write your code in this editor
hp = 200;
maxHp = hp;
fase = 2;
animationState = AnimationState.Still;
oneTimeVars = true;
sizeX = 1.1;
sizeY = 1.1;
bossSize = 1.1;
changeLocation = true;
move = false;
//fase 4
fase4Hp = 350*(1 +(global.playerLevel/50))*global.dD;
fase4Damage = (16 + obj_player.hp*0.032)*(1 +(global.playerLevel/50))*global.dD;
fase4Firerate = (0.7);
fase4Shoot = true;
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);