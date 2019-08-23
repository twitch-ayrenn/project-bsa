/// @description vars
////all vars
hp = 100;
maxHp = hp;
fase = 1;
oneTimeVars = true;
sizeX = 2;
sizeY = 2;
wispSize = 2;////fase vars
faseColor = c_aqua;
//fase1
fase1Hp = 200*(1 +(global.playerLevel/50))*global.dD;
fase1Damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/50))*global.dD;
fase1SummonTime = (4)*choose(20,30,40);
fase1Summon = true;
fase1Firerate = (1)*choose(20,30,40);
fase1Shoot = true;
//fase2
fase2Hp = 100*(1 +(global.playerLevel/50))*global.dD;
fase2Damage = (6 + obj_player.hp*0.012)*(1 +(global.playerLevel/50))*global.dD;
fase2Firerate = (1)*choose(20,30,40);
fase2Shoot = true;
fase2Combo = (3)*30;
fase2DoCombo = true;
fase2BigShot = (2)*30;
fase2DoBigShot = true;
upDownY = 0;
upDownYIncrease = 5;
//fase3
fase3Hp = 200*(1 +(global.playerLevel/50))*global.dD;
fase3Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/50))*global.dD;
fase3Firerate = (3)*30;
fase3CirkleShot = (1)*30;
fase3DoCirkleShot = true;
fase3CirkelShotAmount = 6;
//fase4
fase4Hp = 250*(1 +(global.playerLevel/50))*global.dD;
fase4Damage = (10 + obj_player.hp*0.02)*(1 +(global.playerLevel/50))*global.dD;
fase4BigShot = (1.5)*30;
fase4DoBigShot = true;
fase4SummonTime = (3)*choose(25,30,45);
fase4Summon = true;
fase4CirkleShot = (2)*30;
fase4DoCirkelShot = true;
//game stats and rewards
timeToKill = 0;
ttkStacks = 0;
global.theWispMotherReward = 0;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theWispMother,Prioity.Normal,true);
}
bossDeath = "Not my children!"
bossTaunt = "My children awaken!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;