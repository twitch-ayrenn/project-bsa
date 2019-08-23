/// @description Insert description here
// global vars
//normal vars
randomize();
realSize = global.tier1Size;
size = global.tier1Size*choose(0.95,1,1.05,);
doCirkleAttack = true;
doCirkleAttackStacks = irandom_range(0,60);
doCirkleAttackTime = (4)*30;
doSingleAttack = true;
doSingleAttackStacks = irandom_range(0,15);
doSingleAttackTime = (1)*30;
hp = global.tier1Hp;
maxHp = hp;
damage = global.teir1Damage;
moveSpeed = choose(2,2.5,3,3.5,4);
pointX = irandom_range(-50,50)
pointY = irandom_range(-50,50)
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theInfernalWisp,Prioity.Normal,true);
}