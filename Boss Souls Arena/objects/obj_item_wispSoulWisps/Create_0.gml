/// @description Insert description here
// You can write your code in this editor
randomize();
pointX = choose(60,-50,-40,40,50,60);
pointY = choose(-60,-50,-40,40,50,60);
wispSize = choose(0.4,0.45,0.5,0.55,0.6)*0.8;
sizeX = wispSize;
sizeY = wispSize;
deathTimer = (global.damage)*30*global.redWispRangeBoost;
destroyStacks = deathTimer;
damage = global.damage*0.25;
shoot = true;
firerate = (choose(0.7,1,1.3))*30;
image_blend = c_aqua;
