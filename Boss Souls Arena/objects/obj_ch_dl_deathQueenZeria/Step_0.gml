/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
if (x < obj_player.x){sizeX = +bossSize;}
if (x > obj_player.x){sizeX = -bossSize;}
image_xscale = sizeX;
image_yscale = sizeY;
if (hp <= 0){hp = 0;}
if (hp > maxHp){hp = maxHp;}
depth = -y-100;

globalvar summoining;
summoining = obj_ads_spectralHead;
move_towards_point(obj_player.x-35,obj_player.y,1.3);
phase1Damage = (15 + obj_player.hp*0.035)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
phase2Damage = (20 + obj_player.hp*0.045)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
phase3Damage = (22.5 + obj_player.hp*0.05)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
phase4Damage = (25 + obj_player.hp*0.06)*(1 +(global.playerLevel/75))*global.dD*global.dlDamageNerf;
//
image_alpha = 0.80;
image_blend = make_color_rgb(255,150,150);
if (summonSpectralHead == true)
{
	summonSpectralHead = false;
	
	alarm[3] = summonSpectralHeadTime;
}
if (phase >= 1)
{
	
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase1Hp
		maxHp = hp;
	}
	if (shoot == true)
	{
		shoot = false;
		
		alarm[0] = shootTime;	
	}
	if (doubleShoot == true)
	{
		doubleShoot = false;
		
		alarm[1] = shootTime;	
	}
	if (trippleShoot == true)
	{
		trippleShoot = false;
		
		alarm[2] = shootTime;	
	}
}
if (hp <= 0 && phase == 1)
{
	
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
}
if (phase >= 2)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase2Hp
		maxHp = hp;
	}
	if (oneShot == true)
	{
		oneShot = false;
		
		alarm[4] = oneShotTime;
	}
}
if (hp <= 0 && phase == 2)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
}
if (phase >= 3)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase3Hp
		maxHp = hp;
	}
	if (cirkleShot == true)
	{
		cirkleShot = false;
		
		alarm[5] = cirkleShotTime;
	}
}
if (hp <= 0 && phase == 3)
{
	//player shit
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
	{with(obj_player){ashStacks += 12;}}
	
	var punchline = choose(global.playerLine1,global.playerLine2,global.playerLine3,global.playerLine4,global.playerLine5);
	var punchlineText = instance_create_depth(obj_player.x-5,obj_player.y+irandom_range(-5,5),obj_player.depth-10,obj_textMaker);
	punchlineText.color = global.playerTextColor;
	punchlineText.text = punchline;
	//boss shit
	oneTimeVars = true;
	phase = phase+1;
	//reward shit
}
if (phase >= 4)
{
	if (oneTimeVars == true)
	{
		oneTimeVars = false;
		hp = phase4Hp
		maxHp = hp;
		instance_create_depth(x+100,y,depth,obj_ads_spectralHead_right);
		instance_create_depth(x-100,y,depth,obj_ads_spectralHead_left);
	}
}
if (phase == 4 && hp <= 0)
{
	var bossDeathText = bossDeath;
	var bossText = instance_create_depth(x-8,y+irandom_range(-5,5),-1000,obj_textMaker);
	bossText.color = c_gray;
	bossText.text = bossDeathText;
	//player shit
	if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp){
		global.damage *= 1.1;}
	if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash){
		with(obj_player){ashStacks += 12;}}
	repeat(10*global.vampireCrownExtraOrb*global.lifeWispExtraOrb){
		instance_create_depth(x+irandom_range(-10,10),y+irandom_range(-10,10),y-1000,obj_healthOrb);}
	//text
	global.playerMoney += 1000;
	if (instance_exists(obj_ads_spectralHead)){instance_destroy(obj_ads_spectralHead)}
	if (instance_exists(obj_spectralGround)){instance_destroy(obj_spectralGround)}
	if (instance_exists(obj_frostShot)){instance_destroy(obj_frostShot)}
	if (instance_exists(obj_frostOneShot)){instance_destroy(obj_frostOneShot)}
	var deadBoss = instance_create_depth(x,y,depth,obj_deadBoss);
		deadBoss.sprite_index = sprite_index;
		deadBoss.image_alpha = image_alpha;
		deadBoss.image_xscale = image_xscale;
		deadBoss.image_yscale = image_yscale;
	instance_destroy();
}

