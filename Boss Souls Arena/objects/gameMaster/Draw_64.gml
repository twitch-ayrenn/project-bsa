/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu_fill);
if (menu == Menues.Main || menu == Menues.BossLoot || menu == Menues.PlayerSelect || menu == Menues.BossSlain)
{
	
}
if (menu == Menues.Main)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Boss Souls Arena",1.4,1.4,0,c_yellow,c_yellow,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,200,"Play",playSize,playSize,0,c_yellow,c_yellow,playColor,playColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,310,"Boss Loot",bossLootSize,bossLootSize,0,c_yellow,c_yellow,bossLootColor,bossLootColor,1);
	
	//draw_set_font(fnt_menu_fill);
	//draw_text_transformed_color(100,660-160,"Stats",statsSize,statsSize,0,c_yellow,c_yellow,statsColor,statsColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,420,"Settings",settingsSize,settingsSize,0,settingsColor,settingsColor,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Exit",exitSize,exitSize,0,exitColor,exitColor,exitColor,exitColor,1);
}
if (menu == Menues.BossLoot)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Loot",1.2,1.2,0,c_yellow,c_yellow,c_white,c_white,1);

	draw_text_transformed_color(35,330,"Stats",0.4,0.4,0,c_yellow,c_yellow,c_white,c_white,1);
	
	var startY = 340;
	var yIncreasse = 35;
	var hpText = "Health: " + string(100);
	draw_text_transformed_color(35,startY+1*40,hpText,0.3,0.3,0,c_lime,c_lime,c_green,c_green,1);
	
	var dmgCalc = int64(10);
	var dmgText = "Damage: " + string(dmgCalc);
	draw_text_transformed_color(35,startY+2*yIncreasse,dmgText,0.3,0.3,0,c_red,c_red,c_maroon,c_maroon,1);
	
	var spdText = "Speed: " + string(30);
	draw_text_transformed_color(35,startY+3*yIncreasse,spdText,0.3,0.3,0,c_blue,c_blue,c_navy,c_navy,1);
	
	var cjText = "Conjuration: " + string(0) + "%";
	draw_text_transformed_color(35,startY+4*yIncreasse,cjText,0.3,0.3,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
	var frText = "Firerate: " + string(0) + "%";
	draw_text_transformed_color(35,startY+5*yIncreasse,frText,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	var lsText = "LifeSteal: " + string(75) + "%";
	draw_text_transformed_color(35,startY+6*yIncreasse,lsText,0.3,0.3,0,c_red,c_red,c_maroon,c_maroon,1);
	
	var auraText = "Aura Power: " + string(0) + "%";
	draw_text_transformed_color(35,startY+7*yIncreasse,auraText,0.3,0.3,0,c_green,c_green,c_olive,c_olive,1);
	
	var dlText = "Dash Length: " + string(0) + "%";
	draw_text_transformed_color(35,startY+8*yIncreasse,dlText,0.3,0.3,0,c_aqua,c_aqua,c_aqu,c_olive,1);
	
	var cdText = "Cooldown reduction: " + string(0) + "%";
	draw_text_transformed_color(35,startY+9*yIncreasse,cdText,0.3,0.3,0,c_green,c_green,c_olive,c_olive,1);
	
	
	
	#region
	draw_set_font(fnt_NewNormalText);
	if (itemShowInfoFor == Boss.BloodZombie)
	{
		 draw_text_transformed_color(300,350+1*22,"Using your ultimate attack[R] spawns",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 draw_text_transformed_color(300,350+2*22,"an area that increases your speed",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 draw_text_transformed_color(300,350+3*22,"and it damages enemies that stand",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 draw_text_transformed_color(300,350+4*22,"in the area.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 var text = "[Area Damage]: " + string(dmgCalc) + "/second";
		 draw_text_transformed_color(300,350+5*22,text,0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 draw_text_transformed_color(300,350+6*22,"[Speed Increase]: 20%",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		 draw_text_transformed_color(300,350+7*22,"Item Stats",0.075,0.075,0,global.orange,global.orange,c_yellow,c_yellow,1);
		 draw_text_transformed_color(300,350+8*22,"+ I Damage",0.075,0.075,0,c_red,c_red,c_maroon,c_maroon,1);
		 draw_text_transformed_color(300,350+9*22,"+ II Speed",0.075,0.075,0,c_blue,c_blue,c_navy,c_navy,1);
		draw_text_transformed_color(300,350+10*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+11*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+12*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+13*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+14*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+15*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(300,350+16*22,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		
		//name
		draw_set_font(fnt_menu_fill);
		var ItemName = "Item Info: " + "Zombie Head"
		draw_text_transformed_color(300,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	}
	
	#endregion
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	draw_text_transformed_color(300+20,735,"Clear",clearSize/2,clearSize/2,0,c_yellow,c_yellow,clearColor,clearColor,1);
	draw_text_transformed_color(300-10,785,"selected",clearSize/2,clearSize/2,0,c_yellow,c_yellow,clearColor,clearColor,1);
	draw_text_transformed_color(300+20,835,"items",clearSize/2,clearSize/2,0,c_yellow,c_yellow,clearColor,clearColor,1);
	
	draw_text_transformed_color(1310,760,"Fight!",fightSize,fightSize,0,c_yellow,c_yellow,fightColor,fightColor,1);
}
if (menu == Menues.Settings)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Settings",1.5,1.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(80,210,"Gameplay",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,270,"Show Extra info:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.ShowInfo == true)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(435,270,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(515,270,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.ShowInfo == false)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(435,270,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(515,270,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(80,330,"Visual",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,390,"Fullscreen:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (window_get_fullscreen() == true)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(315,390,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(390,390,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (window_get_fullscreen()  == false)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(315,390,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(390,390,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(80,450,"Audio",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,510,"Music:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.musicOn == true)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(200,510,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(290,510,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.musicOn == false)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(200,510,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(290,510,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,570,"Ambient:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.ambientOn == true)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(250,570,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(330,570,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.ambientOn == false)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(250,570,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(330,570,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,630,"Sound:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);	
	if (global.soundOn == true)
	{

		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(220,630,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(300,630,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.soundOn == false)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(220,630,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(300,630,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,690,"Reset Game!",0.5,0.5,0,c_red,c_red,c_dkgray,c_dkgray,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
if (menu == Menues.PlayerSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Fighter",1.5,1.5,0,c_yellow,c_yellow,c_white,c_white,1);


	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
if (menu == Menues.BossSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Fight",1.5,1.5,0,c_yellow,c_yellow,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
if (menu == Menues.Play)
{
//	if (chosenBoss == Bosses.The_Fat_Zombie)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find the Zombie statue in",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Summon the Zombie and",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"behead the zombie.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Wisp_Mother)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find The Wisp Mothers yard",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"near the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Summon the grand wisp and",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"stop her!",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Blood_Prince)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,5,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find the blood court, north-",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"west from the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Call upon the vampire and",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"kill the night stalker.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Mad_Witches)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find the Witch court east",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"of the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Summon the witches and put",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"an end to their terror.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_GraveKeeper)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: The Gravekeeper's statue lies",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"in the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Call upon the the gravekeeper",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"and tell him you cleansed the",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,200,"the great cementary.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Infernal_Wisp)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find the grave of flames south",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"of the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Summon the Infernal and tame",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"the flame.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Flame_Gate)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: In the grave of flames you will",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"find the gate statue.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Burn the gate and cleanse it",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"from demonic presence.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Soul_Wisp)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: Find The Court of Souls located",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"north of the main court.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Slay the Wisp Summoner.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
//	if (chosenBoss == Bosses.The_Soul_Guards)
//	{
//		draw_set_font(fnt_menu_fill);
//		//draw_text_transformed_color(1185,30,"/////////////////////////////",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1185,15,":Objectives:",0.45,0.45,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,60,"1: The Soul Guard statue lies in",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,95,"the Court Of Soul.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,130,"2: Slay the Soul Guard.",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//		draw_text_transformed_color(1080,165,"",0.35,0.35,0,c_white,c_white,c_yellow,c_yellow,1);
//	}
	if (global.selectedWitchItem == WitchBossItems.AnniesDeathCap)
	{
		effect_create_above(ef_rain,x,y,0.1,c_lime);
	}
}
if (menu == Menues.BossSlain)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(430,70,"Boss Slayed!",1.5,1.5,0,c_yellow,c_yellow,c_white,c_white,1);
	
	if (chosenBoss == Bosses.The_Fat_Zombie)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theFatZombieReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theFatZombie,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.The_Wisp_Mother)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theWispMotherReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theWispMother,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.The_Blood_Prince)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theBloodPrinceReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theBloodPrince,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.The_Mad_Witches)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theMadWitchesReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theMadWitches,6,800,450,10,10,0,c_white,1);
	}	
	if (chosenBoss == Bosses.The_GraveKeeper)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theGravekeeperReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theGravekeeper,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.The_Infernal_Wisp)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theInfernalWispReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theFlameWisp,6,800,450,10,10,0,c_white,1);
	}	
	if (chosenBoss == Bosses.The_Flame_Gate)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theFlameGateReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theFlameGate,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.The_Soul_Wisp)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theSoulWispReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theSoulWisp,6,800,450,10,10,0,c_white,1);
	}	
	if (chosenBoss == Bosses.The_Soul_Guards)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.theSoulGuardsReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_theSoulGuards,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.Death_General_Zarodil)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.deathGeneralZarodilReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_deathGeneral,6,800,450,10,10,0,c_white,1);
	}
	if (chosenBoss == Bosses.Death_Queen_Zeria)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.deathQueenZeriaReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_deathQueen,6,800,450,10,10,0,c_white,1);
	}	
	if (chosenBoss == Bosses.Death_King_Zarok)
	{
		draw_set_font(fnt_menu_fill);
		draw_text_transformed_color(590		,700,"Reward:",1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_text_transformed_color(590+350	,700,global.deathKingZarokReward,1,1,0,c_yellow,c_yellow,c_white,c_white,1);
		draw_sprite_ext(spr_contractDone_deathking,6,800,450,10,10,0,c_white,1);
	}	
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);	
}
if (menu == Menues.Death)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(430,70,"Mission Failed!",1.5,1.5,0,c_red,c_red,c_maroon,c_maroon,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);	
}
//showInfo
if (global.ShowInfo == true && menu == Menues.Play || global.ShowInfo == true && menu == Menues.BossFailed || global.ShowInfo == true && menu == Menues.BossSlain)
{
	draw_text_transformed_color(15,140,"Health:    /",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(82,140,int64(obj_player.hp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(130,140,int64(obj_player.maxHp*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(15,160,"Damage:",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(82,160,int64(global.damage*10),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(15,180,"baseSpeed:",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(110,180,int64(obj_player.moveSpeed),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(15,200,"realSpeed:",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(105,200,int64(obj_player.actualSpeed),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(15,220,"AttackSpeed:",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(130,220,30/obj_player.firerate,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}
if (global.showDD == true)
{
	var text1 = "DD(%)";
	var text2 = string(global.dD*100 -100);
	var text3 = " ";
	var stringer = text1 + text3 + text2;
	draw_text_transformed_color(25,900-50,string(stringer),0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}
if (global.showFps == true)
{
	draw_text_transformed_color(25,900-25,"Fps(30):",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	fpsShowTimerStacks++;
	if (fpsShowTimerStacks >= 15)
	{	
		fpsShow = fps_real;
		fpsShowTimerStacks = 0;
	}
	draw_text_transformed_color(110,900-25,fpsShow,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	
}
//cursor
if (room == rm_menu || room == rm_bossSelect || room == rm_theGreatCementary && instance_exists(par_cursor) == false)
{
	draw_sprite_ext(spr_cursor,0,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),5,5,0,c_white,1,);
}

