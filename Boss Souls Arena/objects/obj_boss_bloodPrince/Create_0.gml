/// @description Insert description here
// You can write your code in this editor
enum AnimationState
{
	Still,
	Moving,
	
}
hp = 100;
maxHp = hp;
fase = 2;
animationState = AnimationState.Still;
oneTimeVars = true;
sizeX = 1.2;
sizeY = 1.2;
bossSize = 1.2;
pointX = choose(50,0,-50);
pointY = choose(50,-50);
changeLocation = true;
move = false;
//fase 2
fase2Hp = 100*(1 +(global.playerLevel/100))*global.dD;
fase2Damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/100))*global.dD;
fase2Firerate = (1)*choose(20,30,40);
fase2Shoot = true;
//fase 3
fase3Hp = 150*(1 +(global.playerLevel/100))*global.dD;
fase3Damage = (6 + obj_player.hp*0.012)*(1 +(global.playerLevel/100))*global.dD;
fase3Firerate = (1)*choose(20,30,40);
fase3Shoot = true;
fase3Teleport = (3)*choose(20,30,40);
fase3DoTeleport = true;
//fase 4
fase4Hp = 175*(1 +(global.playerLevel/100))*global.dD;
fase4Damage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/100))*global.dD;
fase4Firerate = (0.7)*choose(20,30,40);
fase4Shoot = true;
fase4Teleport = (2.5)*choose(20,30,40);
fase4DoTeleport = true;
//reward shit
global.theBloodPrinceReward = 0;
bossDeath = "Not like this!"
bossTaunt = "You will be a great meal"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;