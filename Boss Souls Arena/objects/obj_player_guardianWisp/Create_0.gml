/// @description vars
////// vars
randomize();
class = Class.The_GuardianWisp;
canAttack = true;
canAttack2 = true;
canTakeMeeleDamage = true;
canTakeMeeleDamageTime = 10;
////class system
runOnce = true;
global.healto = 50;
hp = 50;
maxHp = hp;
moveSpeed = 4;
normalSpeed = moveSpeed;
actualSpeed = moveSpeed;
diagonalSpeed = moveSpeed-2;
firerate = 10;
firerate2 = 30;
idleSprite = spr_item_guardianWisp;
walkSprite = spr_item_guardianWisp;
playerSize = 1;
instance_create_depth(x,y,1,obj_cursor_guardianWisp);
//health regen
//items
hpRegenAmount = 1;
hpRegenStacks = 0;
hpRegenTime = (0.5)*30;
batSpeed = 0;
batSpeedActive = 0;
batStacks = 0;
////states
state = States.Idle;
//slogans
global.playerTextColor = global.orange;
slogan = choose("Burn!","The Order calls for me!","Fire await you!","Wraaaa!");
var sloganText = slogan;
var damageText = instance_create_depth(x+irandom_range(-8,8),y+irandom_range(-5,5),-1000,obj_textMaker);
	damageText.color = global.playerTextColor;
	damageText.text = sloganText;
global.playerLine1 = "From hell i come!";
global.playerLine2 = "Burn Burn Burn!";
global.playerLine3 = "Revenge i Seek.";
global.playerLine4 = "Flames Guide me!";
global.playerLine5 = "Wraaaa!";
