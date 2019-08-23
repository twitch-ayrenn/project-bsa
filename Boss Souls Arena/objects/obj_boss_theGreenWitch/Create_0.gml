/// @description Insert description here
// You can write your code in this editor
witchPostion = 1;
hp = 250*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
firerate = (2)*30;
damage = (7.5 + obj_player.hp*0.075)*(1 +(global.playerLevel/75))*global.dD;
shoot = true;
regenStacks = 15;
regen = true;
bossDeath = "Sisters avenge me!"
bossTaunt = "A weak one!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;