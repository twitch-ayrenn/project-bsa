/// @description Insert description here
// You can write your code in this editor
global.sgChaseDamage = (8 + obj_player.hp*0.016)*(1 +(global.playerLevel/75))*global.dD;
global.sgProjectileDamage = (50 + obj_player.hp*0.1)*(1 +(global.playerLevel/75))*global.dD;
enum SoulAttacks 
{
	Sword_Spin,
	Cirkle_Attack,
	Cone_Attack,
	Mini_Gun,
	TelePort,
	Gain_Strength,
}
hp = 1500*(1 +(global.playerLevel/50))*global.dD;
maxHp = hp;
damage = (15 + obj_player.hp*0.035)*(1 +(global.playerLevel/75))*global.dD;
phase = 1;
oneTimeVars = true;
guardSpeed = 1.9;
sizeX = 1.6;
sizeY = 1.6;
bossSize = 1.6;
chooseAnAttack = true;
teleportAttack = 0;
minigunBullets = 0;
miniGunFirerate = (0.2)*30;
minigun = true;
instance_create_depth(x,y,depth,obj_soulGuardSword_right);
instance_create_depth(x,y,depth,obj_soulGuardSword_left);
var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
var punchlineText = punchline;
var punchlineText = instance_create_depth(obj_player.x+irandom_range(-8,8),obj_player.y+irandom_range(-5,5),-1000,obj_textMaker);
punchlineText.color = global.playerTextColor;
punchlineText.text = punchline;
if (global.musicOn == true)
{
	if (audio_exists(snd_boss_theSoulGuard) == false)
	{
		audio_play_sound(snd_boss_theSoulGuard,Prioity.Normal,true);
	}
}