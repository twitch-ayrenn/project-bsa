/// @description Insert description here
// global vars
//normal vars
realSize = global.tier2Size;
size = global.tier2Size*choose(0.95,1,1.05,);
doCirkleAttack = true;
doCirkleAttackStacks = irandom_range(0,60);
doCirkleAttackTime = (4)*30;
doSingleAttack = false;
doSingleAttackStacks = irandom_range(0,15);
doSingleAttackTime = (1)*30;
hp = global.tier2Hp;
maxHp = hp;
damage = global.teir2Damage;
moveSpeed = choose(2,2.5,3,3.5,4);
pointX = irandom_range(-50,50);
pointY = irandom_range(-50,50);