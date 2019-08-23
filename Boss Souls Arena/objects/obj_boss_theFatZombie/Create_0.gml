/// @description Insert description here
//first time it has 2 fases, second it has 3 fases, 
//third has 4 phases and fourth time it has 4 phases and three of it 
global.zombieFaseAmount = 2;
hp = 100;
maxHp = hp;
fase = 1;
oneTimeVars = true;
sizeX = 1.6;
sizeY = 1.6;
bossSize = 1.6;////fase vars
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theFatZombie,Prioity.Normal,true);
}
//fase 1
fase1Hp = 200*(1 +(global.playerLevel/60))*global.dD;
fase1Damage = (2 + obj_player.hp*0.02)*(1 +(global.playerLevel/60))*global.dD;
fase1Firerate = (2)*30;
fase1Shoot = true;
fase1CirkleTime = (7.5)*30;
fase1DoCirkle = true;
fase1Speed = 1;
//fase 2
fase2Hp = 250*(1 +(global.playerLevel/60));
fase2Damage = (2.5 + obj_player.hp*0.025)*(1 +(global.playerLevel/60))*global.dD;
fase2Firerate = (1.5)*30;
fase2Shoot = true;
fase2CirkleTime = (5.5)*30;
fase2DoCirkle = true;
fase2Speed = 2;
//fase 3
fase3Hp = 2500*(1 +(global.playerLevel/60))*global.dD;
fase3Damage = (40 + obj_player.hp*0.4)*(1 +(global.playerLevel/60))*global.dD;
fase3Firerate = (0.5)*30;
fase3Shoot = true;
fase3CirkleTime = (2.5)*30;
fase3DoCirkle = true;
fase3Speed = 3;
//REWEARD SHIT
global.theFatZombieReward = 0;
//text
bossDeath = "Noooooo!"
bossTaunt = "I will eat you!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;