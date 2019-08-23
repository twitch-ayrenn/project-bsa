/// @description Insert description here
// You can write your code in this editor
hp = 1500*(1 +(global.playerLevel/50));
maxHp = hp;
damage = 60*global.dD;
global.sgChaseDamage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/50))*global.dD;
global.sgProjectileDamage = (32 + obj_player.hp*0.32)*(1 +(global.playerLevel/50))*global.dD;
phase = 1;
oneTimeVars = true;
guardSpeed = 2.2;
sizeX = 1.6;
sizeY = 1.6;
bossSize = 1.6;
chooseAnAttack = true;
teleportAttack = 0;
minigunBullets = 0;
miniGunFirerate = (0.2)*30;
minigun = true;
instance_create_depth(x,y,depth,obj_soulGuardSword_right_2);
instance_create_depth(x,y,depth,obj_soulGuardSword_left_2);

var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
var punchlineText = punchline;
var punchlineText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),-1000,obj_textMaker);
punchlineText.color = global.playerTextColor;
punchlineText.text = punchline;