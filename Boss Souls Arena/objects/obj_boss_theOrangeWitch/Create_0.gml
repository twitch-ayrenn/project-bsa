/// @description Insert description here
// You can write your code in this editor
witchPostion = 3;
hp = 250*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
firerate = (0.15)*30;
damage = (4 + obj_player.hp*0.008)*(1 +(global.playerLevel/50))*global.dD;
shoot = true;
regenStacks = true;
regen = true;
angle = 0;
bossDeath = "Curse you mortal!"
bossTaunt = "A fine meal!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;