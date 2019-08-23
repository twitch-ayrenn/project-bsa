/// @description Insert description here
// You can write your code in this editor
hp = 500;
maxHp = hp;
phase = 1;
damage = 20;
oneTimeVars = true;
sizeX = 1.5;
sizeY = 1.5;
wispSize = 1.5;////fase vars
phaseColor = c_white;
summonWisp = true;
summonWispTime = (1)*30;
wispSpeed = 1;
bonusSoulDamage = obj_player.hp*0.05;
//phase1
phase1Hp = 500*(1 +(global.playerLevel/50))*global.dD;
phase1Damage = (15 + obj_player.hp*0.035)*(1 +(global.playerLevel/50))*global.dD;
phase1Color = c_white;
phase1Speed = 2;
phase1DoTripleShot = true;
phase1TripleShotTime = (3)*30;
phase1DoQuadraShot = true;
phase1QudraShotTime = (8)*30;
phase1DoHexaShot = true;
phase1HexaShotTime = (12)*30;
phase1SummonWispTime = (1.5)*30;
//phase2
phase2Hp = 1000*(1 +(global.playerLevel/50))*global.dD;
phase2Damage = (20 + obj_player.hp*0.045)*(1 +(global.playerLevel/50))*global.dD;
phase2Color = c_purple;
phase2Speed = 2;
phase2DoCirkleShot = true;
phase2CirkleShotTime = (2)*30;
phase2SummonWispTime = (1.25)*30;
//phase3
phase3Hp = 1500*(1 +(global.playerLevel/50))*global.dD;
phase3Damage = 22.5 + obj_player.hp*0.05*(1 +(global.playerLevel/50))*global.dD;
phase3Color = c_yellow;
phase3Speed = obj_player.moveSpeed+0.6;
phase3SpawnGoo = true;
phase3SummonWispTime = (1)*30;
//phase4
phase4Hp = 2000*(1 +(global.playerLevel/50))*global.dD;
phase4Damage = (25 + obj_player.hp*0.06)*(1 +(global.playerLevel/50))*global.dD;
phase4Color = c_red;
phase4Speed = obj_player.moveSpeed+0.3;
phase4DoCikrleShot = true;
phase4CikrleShotTime = (5)*30;
phase4DoTripleShot = true;
phase4TripleShotTime = (3)*30;
phase4DoQuadraShot = true;
phase4QudraShotTime = (8)*30;
phase4DoHexaShot = true;
phase4SummonWispTime = (0.5)*30;
phase4HexaShotTime = (12)*30;
phase4SpawnGoo = true;
//
global.theSoulWispReward = 0;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theSoulWisp,Prioity.Normal,true);
}
bossDeath = "Raaaaaaaaaa!"
bossTaunt = "You will die like my mother did!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;
