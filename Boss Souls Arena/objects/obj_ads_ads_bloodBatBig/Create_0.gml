/// @description Insert description here
// You can write your code in this editor
hp = 125*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
destroyStacks = 0;
pointX = choose(-16,-12,-8,-4,4,8,12,16);
pointY = choose(-16,-12,-8,-4,4,8,12,16);
size = choose(0.8,1,1.2);
image_xscale = size;
image_yscale = size;