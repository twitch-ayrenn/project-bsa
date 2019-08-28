/// @description Insert description here
// You can write your code in this editor
enum Attacks 
{
	ScytheChase,
	ScytheSpinTp,
	ScytheCombo,
	CrossScythe,
	PlusScythe,
	CirkleScythe,
	Shot10Scythes,
}
hp = 1500*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
global.gkSpinDamage = (45 + obj_player.hp*0.09)*(1 +(global.playerLevel/75))*global.dD;
global.gkChaseDamage = (7 + obj_player.hp*0.014)*(1 +(global.playerLevel/75))*global.dD;
fase = 1;
oneTimeVars = true;
sizeX = 1.8;
sizeY = 1.8;
bossSize = 1.8;
chooseAnAttack = true;

global.theGravekeeperReward = 0;
if (global.musicOn == true)
{
	audio_play_sound(snd_boss_theGraveKeeper,Prioity.Normal,true);
}
bossDeath = "Thank you"
bossTaunt = "Forgive me!"; 
var bossTauntText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossTauntText.color = c_gray;
	bossTauntText.text = bossTaunt;
var playerToBossText = global.playerLineToBoss;
	var punchlineText = instance_create_depth(obj_player.x-8,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = playerToBossText;