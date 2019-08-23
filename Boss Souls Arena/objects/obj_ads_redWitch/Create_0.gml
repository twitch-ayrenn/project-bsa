/// @description Insert description here
// You can write your code in this editor
witchPostion = choose(1,2,3)
hp = 350*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
firerate = (1)*30;
damage = (10 + obj_player.hp*0.1)*(1 +(global.playerLevel/50))*global.dD;
shoot = true;
regenStacks = 15;
regen = true;