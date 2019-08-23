/// @description Insert description here
// You can write your code in this editor
hp = 0;
phase1Hp = 2000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase2Hp = 3000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase3Hp = 4000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
phase4Hp = 7000*(1 +(global.playerLevel/50))*global.dD*global.dlHealthBuff;
maxHp = hp;
generalSpeed = 1;
global.dgzScytheDamage =  (13 + obj_player.hp*0.015)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
global.dszProjectileAttacks = (45 + obj_player.hp*0.25)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
phase = 1;
doAttacks = true;
oneTimeVars = true;
sizeX = 1;
sizeY = 1;
bossSize = 1;
chooseAnAttack = true;
minigunBullets = 0;
miniGunFirerate = (0.2)*30;
minigun = true;
global.theGravekeeperReward = 0;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theGraveKeeper,Prioity.Normal,true);
}
bossDeath = "Nooo! I cant lose!"
bossTaunt = "A worthy opponent!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;