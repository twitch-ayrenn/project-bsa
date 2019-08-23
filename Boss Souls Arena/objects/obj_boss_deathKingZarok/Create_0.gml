/// @description Insert description here
// You can write your code in this editor
global.dkiProjectileDamage = (15 + obj_player.hp*0.03)*(1 +(global.playerLevel/55))*global.dD;
hp = 20000;
maxHp = 20000;
phase = 1;
oneTimeVars = true;
sizeX = 2;
sizeY = 2;
bossSize = 2;
oneTimeVars = true;
summon = true;
summonTime = (4)*30;
phase123SummonTime = (5)*30;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_royals,Prioity.Normal,true);
}
//phase 1
phase1Hp = 2500*(1 +(global.playerLevel/40))*global.dD;
phase1DoubleShot = true;
phase1DoubleShotTime = (2)*30;
//phase 2
phase2Hp = 3000*(1 +(global.playerLevel/40))*global.dD;
phase2TripleShot = true;
phase2TripleShotTime = (2)*30;
//phase 3
phase3Hp = 4500*(1 +(global.playerLevel/40))*global.dD;
phase3CirkleShot = true;
phase3CirkleShotTime = (3)*30;
//phase 4
phase4Hp = 10000*(1 +(global.playerLevel/40))*global.dD;
phase4CirkleShot = true;
phase4CirkleShotTime = (1.5)*30;
phase4SummonTime = (2)*30;
bossDeath = "For my slayer will die!"
bossTaunt = "You will die one way or another!";
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;
