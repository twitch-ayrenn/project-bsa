/// @description Insert description here
var clickOnce = true;
var startX = 225;
var debugBoxes = false;
var gmx = device_mouse_x_to_gui(0);
var gmy = device_mouse_y_to_gui(0);
#region Main Menu
if (menu == Menues.Main)
{	
	var normalSize = 0.7;
	var highlightSize = 0.8;
	var campaignSize = normalSize;
	var campaignHover = false;
	var bossRushSize = normalSize;
	var bossHover = false;
	var statsSize = normalSize;
	var statsHover = false;
	var controllsSize = normalSize;
	var controlHover = false;
	var sizeOfSetting = normalSize;
	var settingsHover = false;
	var creditsSize = normalSize;
	var creditsHover = false;
	var exitGameSize = normalSize;
	var exitHover = false;
		
	var startY = 300;
	var sep = 85;
	
	var x1,x2,y1,y2,place,t;
	
	#region Campaign
	t = "Campaign"
	place = 0;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		playColor = c_yellow;
		campaignSize = highlightSize;
		campaignHover = true;
	}
	else 
	{ 
		playColor = global.darkYellow;
		campaignSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && campaignHover)
	{
		chosenMode = Menues.Campaign;
		menu = Menues.PlayerSelect;	
		bonusHealth = 0;
		bonusSpeed = 0;
		bonusDash = 0;
		bonusDamage = 0;
		bonusFirerate = 0;
		bonusLifeSteal = 0;
		bonusConjur = 0;
		bonusCooldown = 0;
		
		transitionAlpha = 1;
		fightAlpha = 1;
		fightTransitionAlpha = 0;
		tutorialAlpha = 1;
		playerTutorialAlpha = 0;
		quePlayerTutorial = false;
		tutorialFadeOut = false;
		checkOnce = true;
		if (global.tutorial == true)
		{
			global.tutorialBoss = true;
			global.tutorialPlayer = false;
		}
		if (assassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
		if (assassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
		if (pyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
		if (pyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
		if (bloodKnightUnlocked == true){with (obj_npc_theBloodKnight){outline = "unSelected";}}
		if (bloodKnightUnlocked == false){with (obj_npc_theBloodKnight){outline = "locked"}}
		if (plaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){outline = "unSelected";}}
		if (plaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){outline = "locked"}}
		if (agentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){outline = "unSelected";}}
		if (agentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){outline = "locked"}}
		if (angelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){outline = "unSelected";}}
		if (angelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){outline = "locked"}}
		if (gravelingUnlocked == true){with (obj_npc_theGraveling){outline = "unSelected";}}
		if (gravelingUnlocked == false){with (obj_npc_theGraveling){outline = "locked"}}
		with(par_npc){spawnSign = true;}
		with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterCampaign;}
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Boss Rush
	t = "Arena Rush"
	place = 1;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		playArenaColor = c_yellow;
		bossRushSize = highlightSize;
		bossHover = true;
	}
	else 
	{ 
		playArenaColor = global.darkYellow;
		bossRushSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && bossHover)
	{
		chosenMode = Menues.BossRush;
		menu = Menues.PlayerSelect;	
		bonusHealth = 0;
		bonusSpeed = 0;
		bonusDash = 0;
		bonusDamage = 0;
		bonusFirerate = 0;
		bonusLifeSteal = 0;
		bonusConjur = 0;
		bonusCooldown = 0;
		
		transitionAlpha = 1;
		fightAlpha = 1;
		fightTransitionAlpha = 0;
		tutorialAlpha = 1;
		playerTutorialAlpha = 0;
		quePlayerTutorial = false;
		tutorialFadeOut = false;
		checkOnce = true;
		if (global.tutorial == true)
		{
			global.tutorialBoss = true;
			global.tutorialPlayer = false;
		}
		if (bossAssassinUnlocked == true){with (obj_npc_theShadow){outline = "unSelected";}}
		if (bossAssassinUnlocked == false){with (obj_npc_theShadow){outline = "locked"}}
		if (bossPyromancerUnlocked == true){with (obj_npc_thePyro){outline = "unSelected";}}
		if (bossPyromancerUnlocked == false){with (obj_npc_thePyro){outline = "locked"}}
		if (bossBloodKnightUnlocked == true){with (obj_npc_theBloodKnight){outline = "unSelected";}}
		if (bossBloodKnightUnlocked == false){with (obj_npc_theBloodKnight){outline = "locked"}}
		if (bossPlaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){outline = "unSelected";}}
		if (bossPlaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){outline = "locked"}}
		if (bossAgentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){outline = "unSelected";}}
		if (bossAgentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){outline = "locked"}}
		if (bossAngelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){outline = "unSelected";}}
		if (bossAngelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){outline = "locked"}}
		if (bossGravelingUnlocked == true){with (obj_npc_theGraveling){outline = "unSelected";}}
		if (bossGravelingUnlocked == false){with (obj_npc_theGraveling){outline = "locked"}}
		with(par_npc){spawnSign = true;}
		with (obj_playerInfoBox){playerShowInfoFor = Character.NoCharacterArenaRush;}
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Stats
	t = "Stats"
	place = 2;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		statsColor = c_yellow;
		statsSize = highlightSize;
		statsHover = true;
	}
	else 
	{ 
		statsColor = global.darkYellow;
		statsSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && statsHover)
	{
		menu = Menues.Controlls;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Controls
	t = "Controls"
	place = 3;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		controllsColor = c_yellow;
		controllsSize = highlightSize;
		controlHover = true;
	}
	else 
	{ 
		controllsColor = global.darkYellow;
		controllsSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && controlHover)
	{
		menu = Menues.Controlls;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Settings
	t = "Settings"
	place = 4;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		settingsColor = c_yellow;
		sizeOfSetting = highlightSize;
		settingsHover = true;
	}
	else 
	{ 
		settingsColor = global.darkYellow;
		sizeOfSetting = normalSize;
	}
	if (mouse_check_button_released(mb_left) && settingsHover)
	{
		clickOnce = false;
		with (gameMaster)
		{
			menu = Menues.Settings;	
		}
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Credits
	t = "Credits"
	place = 5;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		creditsColor = c_yellow;
		creditsSize = highlightSize;
		creditsHover = true;
	}
	else 
	{ 
		creditsColor = global.darkYellow;
		creditsSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && creditsHover)
	{
		menu = Menues.Credits;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Exit
	t = "Exit"
	place = 6;
	x1 = startX-string_length(t)*17;
	y1 = startY + sep*place-30
	x2 = startX+string_length(t)*17;
	y2 = startY + sep*place+30;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		exitColor = c_yellow;
		exitGameSize = highlightSize;
		exitHover = true;
	}
	else 
	{ 
		exitColor = global.darkYellow;
		exitGameSize = normalSize;
	}
	if (mouse_check_button_released(mb_left) && exitHover)
	{	
		game_save(global.saveFile);
		game_end();
		//sound
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	
	draw_set_font(fnt_menu_fill);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed_color(startX,90,"Boss Souls",0.95,0.95,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(startX,195,"Arena",1.3,1.3,0,c_yellow,c_yellow,global.orange,global.orange,1);
	
	draw_line_width_color(startX,250-3,startX,250+3,425,global.orange,c_yellow);
	
	draw_text_transformed_color(startX,startY + sep*0,"Campaign",campaignSize,campaignSize,0,global.orange,global.orange,playColor,playColor,1);
								
	draw_text_transformed_color(startX,startY + sep*1,"Arena Rush",bossRushSize,bossRushSize,0,global.orange,global.orange,playArenaColor,playArenaColor,1);
	
	draw_text_transformed_color(startX,startY + sep*2,"Stats",statsSize,statsSize,0,global.orange,global.orange,statsColor,statsColor,1);
								
	draw_text_transformed_color(startX,startY + sep*3,"Controls",controllsSize,controllsSize,0,global.orange,global.orange,controllsColor,controllsColor,1);
								
	draw_text_transformed_color(startX,startY + sep*4,"Settings",sizeOfSetting,sizeOfSetting,0,global.orange,global.orange,settingsColor,settingsColor,1);
								
	draw_text_transformed_color(startX,startY + sep*5,"Credits",creditsSize,creditsSize,0,global.orange,global.orange,creditsColor,creditsColor,1);
	
	draw_text_transformed_color(startX,startY + sep*6,"Exit",exitGameSize,exitGameSize,0,global.orange,global.orange,exitColor,exitColor,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	if (backToMenuAlpha > 0){backToMenuAlpha -= clamp(0.45/30,0,1);}
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,backToMenuAlpha);
	
	//Beta
	draw_set_alpha(0.75)
	//draw_rectangle_color(1275,735,1575,875,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
	//draw_text_ext_transformed_color(1285,745,"In Development. Thanks so so much for playing<3 Hope you enjoy the game.\nAlso I need a publisher.",100,1100,0.25,0.25,0,global.orange,global.orange,c_yellow,c_yellow,1);
}
#endregion
#region Boss Loot
if (menu == Menues.BossLoot)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,90,"Select",0.95,0.95,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(startX,186,"Items",1.2,1.2,0,c_yellow,c_yellow,global.orange,global.orange,1);
	draw_text_transformed_color(1625-startX,115,"Character",0.65,0.65,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(1625-startX,190,"Stats",0.8,0.8,0,c_yellow,c_yellow,global.orange,global.orange,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_line_width_color(225,236-3,225,236+3,325,global.orange,c_yellow);
	draw_line_width_color(1625-225,236-3,1625-225,236+3,315,global.orange,c_yellow);
	
	//draw_line_width(400,200,400,700,5);
	var line1X = 500;//400
	//draw_line_width_color(line1X,200,line1X,200+500,5,global.orange,c_yellow);
	var line2X = 1135;
	//draw_line_width_color(line2X,200,line2X,200+500,5,global.orange,c_yellow);
	
	var itemXIncrease = 150;
	draw_text_transformed_color(450,25,"Available Items",0.35,0.35,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(450,670,"Item Slots: " + string(global.maxItemSlots),0.35,0.35,0,global.orange,global.orange,c_yellow,c_yellow,1);
	var itemSlotSize = 0.25;
	var itemSlotY = 860;
	if(global.maxItemSlots >= 1){draw_text_transformed_color(335+1*itemXIncrease,itemSlotY,"Item I",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 2){draw_text_transformed_color(335+2*itemXIncrease,itemSlotY,"Item 2",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 3){draw_text_transformed_color(335+3*itemXIncrease,itemSlotY,"Item 3",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 4){draw_text_transformed_color(335+4*itemXIncrease,itemSlotY,"Item 4",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 5){draw_text_transformed_color(335+5*itemXIncrease,itemSlotY,"Item 5",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 6){draw_text_transformed_color(335+6*itemXIncrease,itemSlotY,"Item 6",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	//1161
	var startY = 300;
	var xStats = 1425-45;
	var yIncreasse = 29;
	var textSize = 0.275;
	var infoTextX = 300 + shoveInX;
	var hpCalc = int64(100 + bonusHealth + previewHealth);
	if (chosenClass == Character.BloodKnight){hpCalc *= 1.5;}
	if (chosenClass == Character.AngelSlayer){hpCalc = clamp(hpCalc,0,150);}
	var hpText = "Max Health: " + string(hpCalc);
	var spdCalc = 20 + bonusSpeed + previewSpeed
	var spdText = "Bonus Speed: " + string(0 +bonusSpeed + previewSpeed);
	var dlCalc = 1 + (0 + bonusDash + previewDash)*0.01;
	var dlText = "Bonus Dash Distance: " + string(0 + bonusDash + previewDash) + "%";
	var dmgCalc = 10 + bonusDamage + previewDamage;
	if (global.itemSelected[Boss.AngelKnightOscar] == true){dmgCalc *= 0.85;}
	var dmgText = "Damage Scaling: " + string(clamp(int64(dmgCalc*10)-100,0,999))  + "%";
	var firerateCalc = 1 + ((bonusFirerate + previewFirerate)/100);
	var frText = "Bonus Attack Speed: " + string(int64(firerateCalc*100-100)) + "%";
	var lsText = "LifeSteal: " + string(75 + bonusLifeSteal + previewLifeSteal) + "%";//base is 75% for all damage
	var conjureCalc = 1 + (bonusConjur + previewConjur)/100;
	var cjText = "Summoning Power: " + string(int64(conjureCalc*100-100)) + "%";
	var cdrCap = 0.5;
	if (global.itemSelected[Boss.AngelKnightOscar] == true){cdrCap = 0.6;}
	var cdCalc = clamp((bonusCooldown + previewCooldown)/100,0,cdrCap);
	var betterCdCalc = clamp(1-((bonusCooldown + previewCooldown)/100),0,1-cdrCap);
	var cdText = "Cooldown reduction: " + string(int64(cdCalc*100)) + "%";
	
	draw_set_halign(fa_center);
	draw_text_transformed_color(1625-startX,-75+startY+1*yIncreasse-7,"Defensive Stats",textSize*1.3,textSize*1.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(1625-startX,-75+startY+2*yIncreasse,hpText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);	
	draw_text_transformed_color(1625-startX,-75+startY+3*yIncreasse,lsText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(1625-startX,-75+startY+5*yIncreasse-7,"Damage Stats",textSize*1.3,textSize*1.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(1625-startX,-75+startY+6*yIncreasse,dmgText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(1625-startX,-75+startY+7*yIncreasse,frText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(1625-startX,-75+startY+8*yIncreasse,cjText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(1625-startX,-75+startY+9*yIncreasse,cdText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(1625-startX,-75+startY+11*yIncreasse-7,"Mobility Stats",textSize*1.3,textSize*1.3,0,global.orange,global.orange,c_yellow,c_yellow,1);	
	draw_text_transformed_color(1625-startX,-75+startY+12*yIncreasse,spdText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(1625-startX,-75+startY+13*yIncreasse,dlText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
	draw_set_halign(fa_left);
	
	#region Item descriptions
	shoveInX = 865;
	itemTextSize = 0.061;
	itemTextSizeBig = 0.27;
	itemTextSeparationY = 18.3;
	draw_set_font(fnt_NewNormalText);
	startY = 455;
	var titleStartY = startY-20;
	infoTextX = 10;
		#region No Item Selected
		if (itemShowInfoFor == Boss.NoBoss)
		{
			draw_set_font(fnt_NewNormalText);																					 //
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY, "Select an item to the right by clicking on it.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY, "Clear Selected items by pressing the \"Clear",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY, "Selected Items\" button.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4.5*itemTextSeparationY,"Hover over an item to see info about that ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5.5*itemTextSeparationY,"item. Permanent items are unlocked on all ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6.5*itemTextSeparationY,"characters.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"Hover over the stats on the right side to see",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"what the different stats do.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10.5*itemTextSeparationY,"Gain more item slots by slaying more",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11.5*itemTextSeparationY,"bosses. The max amount of item slots you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12.5*itemTextSeparationY,"can obtain is 6.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "No Selected Item"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Health
		if (itemShowInfoFor == Boss.Health)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Health determines how much damage you can",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"take before dying.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Health"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Speed
		if (itemShowInfoFor == Boss.Speed)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Speed determines how fast you walk around.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"Some bosses might require very high speed",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"to beat.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Movement Speed"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Dash Distance
		if (itemShowInfoFor == Boss.DashLength)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Dash Distance increases the length of your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"dash.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Dash Distance"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Damage
		if (itemShowInfoFor == Boss.Damage)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Damage increases the damage of your abilties.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"Exeptions are:",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"Bloodknights summoned bats.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"Plaguewalkers leeches.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Damage Scaling"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Attack Speed
		if (itemShowInfoFor == Boss.AttackSpeed)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Attack Speed reduces the time between attacks.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"Exeptions are:",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"Pyromancer attacks.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"Death Scythe item",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Attack Speed"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Lifesteal
		if (itemShowInfoFor == Boss.Lifesteal)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Lifesteal heals you for all damage you do. ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"The amount healed is lifesteal a precentage ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"of the damage you deal.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"Your base life steal is 75%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Lifesteal"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Cooldown Reduction
		if (itemShowInfoFor == Boss.CDR)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Cooldown Reduction reduces the cooldown",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"of your abilities and ultimate ability. ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"Cooldown reduction is caped at 50% unless ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"you equip an item that increases the cap.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Cooldown Reduction"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Summoning Power
		if (itemShowInfoFor == Boss.SummoningPower)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Summoning Power increases the power of ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"anything that has been summoned. This can",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"either be by summoning more things or",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"increasing the damage or the lifespan of",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"the summoned creature.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Summoning Power"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		
		#region Blood Zombie
		if (itemShowInfoFor == Boss.BloodZombie)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your ultimate spawns an area. It increases your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"speed and damages enemies within the area.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Total Area Damage]: " + string(int64(dmgCalc*7));
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			var bztext2 = "[Speed Increase]: " +  string(50) + "%";
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,bztext2,itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+5.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"+40 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+2 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Blood Harvesters Head"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Flame Wisp
		if (itemShowInfoFor == Boss.FlameWisp)
		{
			var fText = "Fry apears every [" + string(int64(clamp(9/conjureCalc,3,9))) + "] seconds. Walk to Fry"
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,fText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"within a second and Fry will shoot a giant",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"flame ball at your enemies. After a second ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"Fry will disapear again. The spawn time is",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"reduced by [Summoning Power] stat.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var fText2 = "[Projectile Damage]: " + string(int64(dmgCalc*7))
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+10% Damage ",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+45% Summoning Power",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Fry The Mini Pyro";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion	
		#region Corrupter
		if (itemShowInfoFor == Boss.TheCorrupter)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Not walking for 2 seconds shoots a corruption",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"beam that deals massive damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Beam Damage]: " + string(int64(dmgCalc*18));
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+4.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"+10% Cooldown reduction",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"+10% Damage",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"\" A horrible chill goes down your spine...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Edge of Corruption";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Eye Of Hell
		if (itemShowInfoFor == Boss.FlameGate)
		{
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Dashing causes a demon claw to burst from",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"the ground. When erupting it deals massive",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"damage to enemies hit. The demon claw",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var dhText = "blocks all projectiles. It lasts for [" + string(0.4+hpCalc/200) + "]";
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,dhText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"seconds. The time the claw stays up scales",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"with your [Max Health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);		
			var fText2 = "[Claw Damage]: " + string(int64(dmgCalc*8))
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+8.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+20 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"+15% Dash Distance",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Demon Horn Of Hell"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Wisp sister julia
		if (itemShowInfoFor == Boss.WispSisterJulia)
		{
			draw_set_font(fnt_NewNormalText);
			var soldierAmount = int64(clamp(1*conjureCalc,2,100))
			var soldierText= "Summon [" + string(soldierAmount) +"] futuristic soldiers. They shoot"
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,soldierText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"where you aim. The amount of soldiers",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"increase with [Summoning Power]. Their",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"firerate scales with [Cooldown Reduction].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var fsAs = 1.5/(1+cdCalc*2);
			var bztext = "[Soldier Dps]: " + string(int64((dmgCalc/fsAs)*soldierAmount));
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+6.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+45% Summoning Power",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+5% Cooldown reduction",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);

			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"\"I know we are losing...",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"...I want to know if we lost.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Futuristic Soldier";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Death Knight
		if (itemShowInfoFor == Boss.DeathKnight)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your attack is replaced with the Death Scythe",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"slash. It spins around you and deals damage",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"to enemies hit. It always has an attack speed",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"of 1 attack every 3 seconds. All extra",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"[Attack Speed] is converted to damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Scythe Damage]: " + string(int64(dmgCalc*5*firerateCalc));
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+10% LifeSteal",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);

			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Death Scythe";
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Angel Slayer
		if (itemShowInfoFor == Boss.AngelSlayerRekZul)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Portals will apear in the arena and any ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"creature or any projectiles can travel between ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var portalCd = "them once every [" + string(clamp(7*(1-cdCalc),2,7)) + "] seconds. The portals";
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,portalCd,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"coooldown scales with [Cooldown Reduction]",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"and the minimum cooldown is 2 seconds.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"Cleanses blood puddles off the ground.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+2 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+10% Cooldown Reduction",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"+20 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"\"hmmm huuu huhhuuu?\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Obsidian Portal";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Knight Witch Yi
		if (itemShowInfoFor == Boss.KnightWitchYi)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Using your right click ability summons",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var witchAmountT = "[" + string(int64(1*conjureCalc)) + "] witches that last for 4 seconds. They shoot";
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,witchAmountT,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"shoot a projectile towards your mouse cursor " ,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"when you use Attack. The amount of witches",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"scales with[Summoining Power].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Projectile Damage]: " + string(int64(dmgCalc*2));
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+30% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+30% Summoning Power",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"\"Doubt is the greatest enemy.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Knight Witch Cap"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Amgel Knight Oscar
		if (itemShowInfoFor == Boss.AngelKnightOscar)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your abilities and ultimate has a 25% reduced",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"cooldown. However your damage is reduced by",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"15%. Increases cooldown reduction cap to 60%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+4.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"+25% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"+4 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"\"Perfectly balanced as all things should be...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
		
			//name
			draw_set_font(fnt_menu_fill);
			if(global.ShowInfo == false){var ItemName = "Broken Hourglass";}
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Demon General Rektaar
		if (itemShowInfoFor == Boss.DemonLordRekTaar)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your attack is replaced with the Imp Portal.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"The portal can summon an Impling every",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			frText = "[" + string(6/firerateCalc) + "] seconds that charge in the direction you";
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,frText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"aim. Dashing or Teleporting resets the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"cooldown. [Summoning Power] also increases ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"the damage of the implings.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Imp Damage]: " + string(int64(dmgCalc*5*conjureCalc));
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+8.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+1 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"+15% Dash Distance",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"+20% Damage ",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Imp Portal"
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Headless
		if (itemShowInfoFor == Boss.Headless)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"You can attack twice with each attack.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+2.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"+40% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"-40 Max Health",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"\"Hesitation Is Defeat\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Orb Of Corruption";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Gravekeeper
		if (itemShowInfoFor == Boss.Gravekeeper)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Summon the Gravekeeper and she will increase",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"your speed if you walk within her circle. The",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"circle size increases with [Summoning Power].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext2 = "[Speed Increase]: " +  string(30) + "%";
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,bztext2,itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+5.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"+75% Summoning Power",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+10% Damage ",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Gravekeeper";
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Bloodarmy General
		if (itemShowInfoFor == Boss.BloodKnightDavid)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your ultimate makes you invincible for two",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"seconds.You can not move during this effect",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"and it costs 30% of your current health.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+4.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"+100 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"-4 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"\"Looking to protect yourself, or deal some",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"damage?\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Elder Scroll of Blood"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Statue Of Corruption
		if (itemShowInfoFor == Boss.StatueOfCorruption)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"This item will grant you two additonal items.",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"The Items are chosen randomly and will not",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"grant the stats only the passive ability. If you",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"only select this item you will be given a full",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"set of random items + 3 more.",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+6.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+08*itemTextSeparationY,"+20 Max Health +2 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+09*itemTextSeparationY,"+35% Attack Speed +25% Damage ",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+ 5% Cooldown reduction",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"[Items that cant be found in the box]:",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"Death Scyhte, Broken Hourglass, The Last ",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"Wish and Relic of The Past",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,startY+14*itemTextSeparationY,"\"Is this gambling?\"",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "The Lootbox"
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Wisp Sister Jana
		if (itemShowInfoFor == Boss.WispSisters)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Dashing puts down The Last Wish. If the you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"stands within its area area your [Damage]",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"and [Lifesteal] increase by 10%. If you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"leave the circle you take 15% of your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"health as damage every second. Dashing",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,"moves the sword to your current location.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+3% Lifesteal",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+22.5% Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"-15% Dash Distance",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"\"If I have to choose between one evil",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"and another, I rather not choose.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "The Last Wish"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Demon Queens Head
		if (itemShowInfoFor == Boss.DemonQueensHead)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Replaces ultimate with a big fucking blast.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"The blast leaves an area that increases",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"movement speed by 30%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[BFB Damage]: " + string(int64(dmgCalc*30));
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			var bfText = "Cooldown: " + string(int64(18/(1+cdCalc)))  + " seconds."
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,bfText,itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+6.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+30%  Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+20% Damage",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"\"Weaponizing demons. For a brighter",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"brighter Tomorrow!\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Bfb 9000"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Slime Queen
		if (itemShowInfoFor == Boss.SlimeQueen)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"When you use your ultimate you will enter the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"T52 Slime Armor for 7 seconds. With the ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var t52Text = "armor on you will summon [" + string(int64(1*conjureCalc)) + "] slime with every";
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,t52Text,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"attack & Ability. When inside the armor gain",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"+30% max health but you move 30% slower.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var slimeDamage = "[Slime Damage]: " + string(int64(dmgCalc));
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,slimeDamage,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+10% Cooldown Reduction",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+15% Summoning Power",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"\"War never changes\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "T52 Slime Armor"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Death King
		if (itemShowInfoFor == Boss.DeathKing)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Your right click ability teleports you to where",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"you are aiming within the circle around you.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var deathKingText = "Also gain [" + string(int64(hpCalc*0.02)) + "]% [Lifesteal]. The amount of ";
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,deathKingText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"[Lifesteal] gained is 2% of [Max Health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+5.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+7*itemTextSeparationY,"+30 MaxHealth",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+15% Dash Distance",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+3 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Death Bat Carrier"
			draw_text_transformed_color(infoTextX,titleStartY,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Arena King
		if (itemShowInfoFor == Boss.ArenaKing)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Standing near the boss charges the crown.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"After 7 seconds of charge the crown deals",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"massive damage to all enemies inside the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"circle. The damage scales with your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,"[Max health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var akctext = "[Crown Damage]: " + string(int64(hpCalc*0.7));
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+40 Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+5% Lifesteal",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"\"You made it! You killed me and now",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+13*itemTextSeparationY,"you become me, the Arena King\".",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "The New King"
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Boss Rush Reward
		if (itemShowInfoFor == Boss.BossRushReward)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Replaces ultimate with a dash that deals",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"massive damage to enemies you dash trough.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"The dash damage and range is increased by ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"your [Speed] and [Dash Distance].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var shText = "Cooldown [" + string(int64(18/(1+cdCalc)))  + "] seconds."
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,shText,itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			var akctext = "[Dash Damage]: " + string(int64(spdCalc*6*dlCalc));
			draw_text_transformed_color(infoTextX,startY+6*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+7.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+5 Movement Speed",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,startY+10*itemTextSeparationY,"+5% Dash Distance",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item:" + "Relic Of The Past"
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.275,0.275,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Campaign Reward
		if (itemShowInfoFor == Boss.CampaignReward)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+1*itemTextSeparationY,"Attacking shoots a green hellbolt. Hiting the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+2*itemTextSeparationY,"boss with 10 hellbolts calls down the wrath",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+3*itemTextSeparationY,"of the Demon Queen to deal massive damage ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+4*itemTextSeparationY,"to your enemies.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var akctext = "[Queens Damage]: " + string(int64(dmgCalc*15));
			draw_text_transformed_color(infoTextX,startY+5*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,startY+6.6*itemTextSeparationY,"Item Stats",itemTextSizeBig,itemTextSizeBig,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,startY+8*itemTextSeparationY,"+50% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,startY+9*itemTextSeparationY,"+2% Lifesteal",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,startY+11*itemTextSeparationY,"\"You Did It. The Crazy Son of a",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,startY+12*itemTextSeparationY,"Bitch, You Did It!\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Queen's Eye"
			draw_text_transformed_color(infoTextX,titleStartY+10,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
	#endregion
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center)
	draw_text_transformed_color(300,810,"Clear\nSelected\nItems",clearSize,clearSize,0,global.orange,global.orange,clearColor,clearColor,1);
	draw_text_transformed_color(1450,810,"Fight!",fightSize,fightSize,0,global.orange,global.orange,fightColor,fightColor,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	if (queFight == true)
	{
		if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.6/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,fightTransitionAlpha);
		if (fightTransitionAlpha == 1){room_goto(rm_arena);	menu = Menues.Play; transitionAlpha = 1;queFight = false;}
	}
}
#endregion
#region Settings
if (menu == Menues.Settings)
{
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,90,"Settings",0.9,0.9,0,c_gray,c_gray,c_white,c_white,1);
	draw_text_transformed_color(startX-65,143,"And",0.4,0.4,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,190,"Options",0.9,0.9,0,c_white,c_white,c_gray,c_gray,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	draw_line_width_color(startX,240-3,startX,240+3,425,c_gray,c_silver);
	
	var headlineSize = 0.4;
	var settingSize = 0.25;
	var sep = 32;
	var startY = 265;
	var x1,x2,y1,y2,place,t;
	
	var pressOnce = true;
	place = 1;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (window_get_fullscreen() == false && pressOnce == true){window_set_fullscreen(true); pressOnce = false;}
		if (window_get_fullscreen() == true && pressOnce == true){window_set_fullscreen(false); pressOnce = false;}
	}
	place = 2;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.screenShake == false && pressOnce == true){global.screenShake = true; pressOnce = false;}
		if (global.screenShake == true && pressOnce == true){global.screenShake = false; pressOnce = false;}
	}
	place = 3;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.dashTowardsMove == false && pressOnce == true){global.dashTowardsMove = true; pressOnce = false;}
		if (global.dashTowardsMove == true && pressOnce == true){global.dashTowardsMove = false; pressOnce = false;}
	}
	place = 4;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.autoAim == false && pressOnce == true){global.autoAim = true; pressOnce = false;}
		if (global.autoAim == true && pressOnce == true){global.autoAim = false; pressOnce = false;}
	}	
	place = 5;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.colorBlindIcons == false && pressOnce == true){global.colorBlindIcons = true; pressOnce = false;}
		if (global.colorBlindIcons == true && pressOnce == true){global.colorBlindIcons = false; pressOnce = false;}
	}	
	place = 6;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.colorBlindText == false && pressOnce == true){global.colorBlindText = true; pressOnce = false;}
		if (global.colorBlindText == true && pressOnce == true){global.colorBlindText = false; pressOnce = false;}
	}	
	place = 9;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		clickOnce = false;
		if (global.musicOn == false && pressOnce == true){global.musicOn = true; pressOnce = false;}
		if (global.musicOn == true && pressOnce == true){global.musicOn = false; pressOnce = false;}
	}	
	place = 10;
	x1 = 10;
	y1 = startY + sep*place;
	x2 = startX+200;
	y2 = startY + sep*place+25;
	if (debugBoxes){draw_rectangle_color(x1,y1,x2,y2,c_white,c_white,c_white,c_white,true);}
	if (mouse_check_button_released(mb_left) && gmx > x1 && gmy > y1 && gmx < x2 && gmy < y2)
	{
		if (global.soundOn == false && pressOnce == true){global.soundOn = true; pressOnce = false;}
		if (global.soundOn == true && pressOnce == true){global.soundOn = false; pressOnce = false;}
	}	
	
											draw_text_transformed_color(10,startY + sep*-0.5,"Gameplay",headlineSize,headlineSize,0,c_gray,c_gray,c_white,c_white,1);
	if (window_get_fullscreen() == false){	draw_text_transformed_color(10,startY + sep*1,"Fullscreen: Off | F Key To Fullscreen",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (window_get_fullscreen() == true){	draw_text_transformed_color(10,startY + sep*1,"Fullscreen: On | F Key To Fullscreen",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.screenShake == false){		draw_text_transformed_color(10,startY + sep*2,"Screen Shake: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.screenShake == true){		draw_text_transformed_color(10,startY + sep*2,"Screen Shake: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.dashTowardsMove == false){	draw_text_transformed_color(10,startY + sep*3,"Dash Towards Movement Direction: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.dashTowardsMove == true){	draw_text_transformed_color(10,startY + sep*3,"Dash Towards Movement Direction: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.autoAim == false){			draw_text_transformed_color(10,startY + sep*4,"Aim Assistance: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.autoAim == true){			draw_text_transformed_color(10,startY + sep*4,"Aim Assistance: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindIcons == false){	draw_text_transformed_color(10,startY + sep*5,"Color Blind Attack Icons: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindIcons == true){	draw_text_transformed_color(10,startY + sep*5,"Color Blind Attack Icons: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindText == false){	draw_text_transformed_color(10,startY + sep*6,"Color Blind Attack Text: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindText == true){		draw_text_transformed_color(10,startY + sep*6,"Color Blind Attack Text: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
											draw_text_transformed_color(10,startY + sep*7.5,"Audio",headlineSize,headlineSize,0,c_gray,c_gray,c_white,c_white,1);
	if (global.musicOn == false){			draw_text_transformed_color(10,startY + sep*9,"Music: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.musicOn == true){			draw_text_transformed_color(10,startY + sep*9,"Music: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.soundOn == false){			draw_text_transformed_color(10,startY + sep*10,"Sound: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.soundOn == true){			draw_text_transformed_color(10,startY + sep*10,"Sound: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
}
#endregion
#region Character Select
if (menu == Menues.PlayerSelect)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,90,"Select",0.95,0.95,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(startX,186,"Fighter",1.2,1.2,0,c_yellow,c_yellow,global.orange,global.orange,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
#endregion
#region Credits
if (menu == Menues.Credits)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Credits",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	var headlineSize = 0.4;
	var textSize = 0.061;
	var sep = 18.3;
	var startY = 210;
	
	draw_text_transformed_color(10,startY-15 + sep*0,"Development",headlineSize,headlineSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(10,startY + sep*1,"Hey! My name is Arrjan Tarach and I coded,",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*2,"designed and drew everything in this game.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*3,"This is my first big project and i have worked",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*4,"on this for 3 years. I really hope you enjoy it:)",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*5,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*6,"Outline Shader By: Gurpreet Singh Matharoo",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*7,"Normal Text Font: opendyslexic.org",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*8,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*9,"Special Thanks To!:",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*10,"Filip Zachrisson Hansen - Design",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*11,"Jonathan Eriksson - Edge Of Corruption Idea ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*12,"Martin Gullersbo - Art Feedback",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*13,"Kevin Evason - Art Feedback",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*14,"Anton Palmer - UI & Design Feedback",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*15,"Saga Lindquist - UI Feedback",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*16,"Alex Untoro - Design Mentoring",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*17,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*18,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_set_font(fnt_menu_fill);
}
#endregion
#region Controls & Info 
if (menu == Menues.Controlls)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,90,"Controls",0.9,0.9,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(startX-30,140,"And",0.4,0.4,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
	draw_text_transformed_color(startX,190,"Info",1,1,0,c_yellow,c_yellow,global.orange,global.orange,1);
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_line_width_color(startX,235-3,startX,235+3,425,global.orange,c_yellow);
	var headlineSize = 0.3;
	var textSize = 0.061;
	var sep = 18;
	var startY = 250;
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(10,startY-5 + sep*0,"Controls",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(10,startY + sep*1,"[Move]: Use [W] & [A] & [S] & [D] keys.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*2,"[Attack]: Use (Left Click) or the [1] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*3,"[Ability]: Use (Right Click) or [2] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*4,"[Dash]: Use the [Space] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*5,"[Ultimate]: Use [Q] or [E] or [R]",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*6,"[Main Menu]: Use [ESC] to go back to main menu",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*7,"[Fullscreen]: Fullscreen Toggle with [F]",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(10,startY-5 + sep*9,"Healing and Dodging Damage",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(10,startY + sep*10,"Health is indicated by the big red bar in the upper",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*11,"left corner when in the arena. You heal by doing",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*12,"damage to your opponent. While dashing you can't",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*13,"take any damage & can move trough projectiles.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(10,startY-5 + sep*15,"Winning and Rewards",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(10,startY + sep*16,"You win by defeating your opponent in the arena.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*17,"Every time you defeat a boss you gain an item.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*18,"Slaying bosses unlocks more item slots. The max",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*19,"amount of item slots are 6.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(10,startY-5 + sep*21,"In Game Hud",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(10,startY + sep*22,"Ability Cooldowns are displayed in the upper left",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*23,"corner and on your in arena cursor. Boss Attacks",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*24,"are telegraped by a change in eye color. Each",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*25,"color represents a type of attack so try to  ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(10,startY + sep*26,"remeber them.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
}
#endregion
#region Boss Select
if (menu == Menues.BossSelect)
{	
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450+350;
	var progressionText = "";
	if (chosenClass == Character.ShadowAssassin){progressionText = "Campaign Progression: " + string(int64(	(((assassinProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.Pyromancer){progressionText = "Campaign Progression: " + string(int64(	(((pyromancerProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.BloodKnight){progressionText = "Campaign Progression: " + string(int64(	(((bloodKnightProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.PlaugeWalker){progressionText = "Campaign Progression: " + string(int64(	(((plaugeWalkerProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.Graveling){progressionText = "Campaign Progression: " + string(int64(	(((gravelingProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.AgentOfGod){progressionText = "Campaign Progression: " + string(int64(	(((agentOfGodProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.AngelSlayer){progressionText = "Campaign Progression: " + string(int64(	(((angelSlayerProgress-1)/1.5)/18)*100	)	) + "%";}
	
	draw_text_transformed_color(cX,cY,"Press the A or D keys to scroll left or right",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);	

	var progression = 0;
	if (chosenClass == Character.ShadowAssassin){progression = (((assassinProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.Pyromancer){progression = (((pyromancerProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.BloodKnight){progression = (((bloodKnightProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.PlaugeWalker){progression = (((plaugeWalkerProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.Graveling){progression = (((gravelingProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.AgentOfGod){progression = (((agentOfGodProgress-1)/1.5)/global.ca);}
	if (chosenClass == Character.AngelSlayer){progression = (((angelSlayerProgress-1)/1.5)/global.ca);}
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85)
	draw_line_width_color(800-300-2,777.5,800-300+progression*600,777.5,36,global.orange,c_yellow);
	draw_rectangle_color(800-300,760+0.5,800+300,760+35,c_white,c_white,c_white,c_white,true);
	draw_set_alpha(1)
	draw_text_transformed_color(cX,765,"Campaign Progress: " + string(int64(progression*100)) + "%",0.25,0.25,0,c_silver,c_silver,c_white,c_white,1);
	draw_set_halign(fa_left);
	if (queFight == true)
	{
		if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.4/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,fightTransitionAlpha);
		if (fightTransitionAlpha == 1 && global.tutorial == false){room_goto(rm_arena);	menu = Menues.Play; transitionAlpha = 1;queFight = false;}
		if (fightTransitionAlpha == 1 && global.tutorial == true){room_goto(rm_tutorial);menu = Menues.Play; transitionAlpha = 1;queFight = false;}
	}
}
#endregion
#region In Game
if (menu == Menues.Play)
{
	//Tutorial
	if (room = rm_tutorial)
	{
		draw_set_alpha(0.8);
		draw_rectangle_color(10,150,510,600,c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1);
		draw_rectangle_color(10,150,510,600,global.orange,global.orange,c_yellow,c_yellow,true);
		var headlineSize = 0.3;
		var textSize = 0.061;
		var sep = 18;
		var startY = 160;
	
		draw_set_font(fnt_menu_fill);	
		draw_text_transformed_color(20,startY-5 + sep*0,"Controls",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText)
		draw_text_transformed_color(20,startY + sep*1,"[Move]: Use [W] & [A] & [S] & [D] keys",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*2,"[Attack]: Use [Left Click] or the [1] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*3,"[Ability]: Use [Right Click] or [2] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*4,"[Dash]: Use the [Space] key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*5,"[Ultimate]: Use [Q] or [E] or [R]",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*6,"[Main Menu]: Use [ESC] to go back to menu",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		
		if (global.player.x < 390) 
		{
		draw_set_font(fnt_menu_fill);	
		draw_text_transformed_color(20,startY-5 + sep*8,"Attack The Creates",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText)	
		draw_text_transformed_color(20,startY + sep*9,"Attack the creates to proceed. Ability cooldowns",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*10,"and Health can be viewd in the upper left corner.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*11,"You heal by dealing damage to your opponent.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		}
		if (global.player.x < 450 && global.player.x >= 390) 
		{
		draw_set_font(fnt_menu_fill);	
		draw_text_transformed_color(20,startY-5 + sep*8,"Dodge Damage",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText)	
		draw_text_transformed_color(20,startY + sep*9,"You can dodge all damage by dashing. You can not be",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*10,"hit by projectules while mid dash. Use the [Space] ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*11,"key to dash. Dash trough the projectiles to proceed.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		}
		if (global.player.x > 450&& global.player.x < 575) 
		{
		draw_set_font(fnt_menu_fill);	
		draw_text_transformed_color(20,startY-5 + sep*8,"Kill Your Opponent",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText)	
		draw_text_transformed_color(20,startY + sep*9,"Your opponents health is indicated by the healthbar",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*10,"below your character. The dots below the health bar ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*11,"indicate how many phases the opponent has. The ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);	
		draw_text_transformed_color(20,startY + sep*12,"crystal in the middle indicates what type of attack ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*13,"the opponent will do. All attacks are color coded so",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*14,"remember what color represent specific attacks. The ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*15,"eye color of your opponent will also indicate attacks.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		}
		if (global.player.x > 575) 
		{
		draw_set_font(fnt_menu_fill);	
		draw_text_transformed_color(20,startY-5 + sep*8,"How To Beat The Arena",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText)	
		draw_text_transformed_color(20,startY + sep*9,"To win you must defeat your opponent. To beat the",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*10,"arena you must defeat me, the Arena King. Each",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		draw_text_transformed_color(20,startY + sep*11,"opponent defeated will make you stronger and bring",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);	
		draw_text_transformed_color(20,startY + sep*12,"you closer to fighting me. A fight you will lose.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
		}
		if (global.player.x > 650 && global.tutorial) 
		{
			global.tutorial = false;
			chosenBoss = Boss.BloodZombie;
			fightTransitionAlpha = 0;
			queFight = true;
		}
		if (queFight == true)
		{
			if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.4/30,0,1)}
			draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,fightTransitionAlpha);
			if (fightTransitionAlpha == 1 && global.tutorial == false){room_goto(rm_arena);	menu = Menues.Play; transitionAlpha = 1;queFight = false;}
		}
	}
	if (transitionAlpha > 0){transitionAlpha -= clamp(0.5/30,0,1)}
	//Fade
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,transitionAlpha);
	//Boss Text
	draw_set_font(fnt_menu_fill);
	if (fightAlpha > 0 && transitionAlpha < 0.75){fightAlpha -= clamp(0.3/30,0,1)}
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450-350;
	var nameSize = 1.3;
	if(chosenBoss == Boss.BloodZombie){draw_text_transformed_color(cX,cY,"The Blood Harvester",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.FlameWisp){draw_text_transformed_color(cX,cY,"The Flame Wisp",nameSize,nameSize,0,global.orange,global.orange,c_orange,c_orange,fightAlpha);}
	if(chosenBoss == Boss.TheCorrupter){draw_text_transformed_color(cX,cY,"The Corrupter",nameSize,nameSize,0,c_purple,c_purple,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.FlameGate){draw_text_transformed_color(cX,cY,"The Eye of Hell",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.WispSisterJulia){draw_text_transformed_color(cX,cY,"The Soul Wisp",nameSize,nameSize,0,c_aqua,c_aqua,c_teal,c_teal,fightAlpha);}
	if(chosenBoss == Boss.DeathKnight){draw_text_transformed_color(cX,cY,"The Death Knight",nameSize,nameSize,0,c_silver,c_silver,c_gray,c_gray,fightAlpha);}
	if(chosenBoss == Boss.AngelSlayerRekZul){draw_text_transformed_color(cX,cY,"The Angel Slayer",nameSize,nameSize,0,c_maroon,c_maroon,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.KnightWitchYi){draw_text_transformed_color(cX,cY,"The Knight Witch",nameSize,nameSize,0,c_red,c_red,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.AngelKnightOscar){draw_text_transformed_color(cX,cY,"The Angel Knight",nameSize,nameSize,0,c_aqua,c_aqua,c_silver,c_silver,fightAlpha);}
	if(chosenBoss == Boss.DemonLordRekTaar){draw_text_transformed_color(cX,cY,"The Demon General",nameSize,nameSize,0,global.orange,global.orange,c_yellow,c_yellow,fightAlpha);}
	if(chosenBoss == Boss.Headless){draw_text_transformed_color(cX,cY,"The Headless Consumer",nameSize,nameSize,0,c_purple,c_purple,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.Gravekeeper){draw_text_transformed_color(cX,cY,"The Gravekeeper",nameSize,nameSize,0,c_white,c_white,c_silver,c_silver,fightAlpha);}
	if(chosenBoss == Boss.BloodKnightDavid){draw_text_transformed_color(cX,cY,"Blood Army General",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.StatueOfCorruption){draw_text_transformed_color(cX,cY,"Statue Of Corruption",nameSize,nameSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,fightAlpha);}
	if(chosenBoss == Boss.WispSisters){draw_text_transformed_color(cX,cY,"The Wisp Sisters",nameSize,nameSize,0,global.orange,c_aqua,c_aqua,global.orange,fightAlpha);}
	if(chosenBoss == Boss.DemonQueensHead){draw_text_transformed_color(cX,cY,"Demon Queens Head",nameSize,nameSize,0,c_red,c_red,c_red,c_red,fightAlpha);}
	if(chosenBoss == Boss.FaithDestroyer){draw_text_transformed_color(cX,cY,"The Faith Destroyer",nameSize,nameSize,0,c_red,c_red,c_red,c_red,fightAlpha);}
	if(chosenBoss == Boss.DeathKing){draw_text_transformed_color(cX,cY,"The Lord Of Death",nameSize,nameSize,0,c_black,global.goldColor,global.goldColor,c_black,fightAlpha);}
	if(chosenBoss == Boss.SlimeQueen){draw_text_transformed_color(cX,cY,"The Slime Queen",nameSize,nameSize,0,c_lime,global.goldColor,global.goldColor,c_lime,fightAlpha);}
	if(chosenBoss == Boss.ArenaKing){draw_text_transformed_color(cX,cY,"The Arena King",nameSize,nameSize,0,c_yellow,c_yellow,global.goldColor,global.goldColor,fightAlpha);}
	draw_set_halign(fa_left);
	if (transitionAlpha == 0 && instance_exists(global.player) && instance_exists(obj_camera) && checkOnce == true)
	{
		checkOnce = false;
		if (global.tutorial == false){obj_allBoss.state = BossStates.Fighting;}
		global.player.state = States.Idle;
		obj_camera.state = CameraStates.PlayerView;
		/*if (global.tutorial == true)
		{
			global.player.state = States.Tutorial;
			obj_allBoss.state = BossStates.Tutorial;
			global.tutorialPlayer = true;
		}*/
	}
}
#endregion
#region Victory Screen
if (menu == Menues.BossSlain)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var cX = 800;//center x
	var cY = 175;
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(cX,cY-35,"Boss",1.75,1.75,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_text_transformed_color(cX+5,cY+75,"Defeated",0.83,0.83,0,c_yellow,c_yellow,global.orange,global.orange,1);
	draw_line_width_color(cX+5,cY-4-130,cX+5,cY-130+4,375,c_yellow,global.orange);
	draw_line_width_color(cX+5,cY-4+120,cX+5,cY+120+4,375,global.orange,c_yellow);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if (queLeave == true)
	{
		if (leaveTranistionAlpha < 1){leaveTranistionAlpha += clamp(0.4/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,leaveTranistionAlpha);
	}
	if (leaveTranistionAlpha == 1)
	{
		leaveTranistionAlpha = 0;
		backToMenuAlpha = 1;
		queLeave = false;
		room_goto(rm_menu);
		menu = Menues.Main;
	}
}
#endregion
#region Death / Lost
if (menu == Menues.Death)
{
	deathAlpha += clamp(1.5/30,0,1);
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,deathAlpha);
	
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450-350;
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(cX,cY,"Defeat",3,3,0,c_red,c_red,c_maroon,c_maroon,deathAlpha);
	draw_set_halign(fa_left);
	
	if (queLeave == true)
	{
		if (leaveTranistionAlpha < 1){leaveTranistionAlpha += clamp(0.75/30,0,1);}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,leaveTranistionAlpha);
	}
	if (leaveTranistionAlpha == 1)
	{
		leaveTranistionAlpha = 0;
		backToMenuAlpha = 1;
		autoGoToMenuStacks = 0;
		queLeave = false;
		room_goto(rm_menu);
		menu = Menues.Main;
	}
}
#endregion
#region Back Button
if (menu != Menues.Main && menu != Menues.BeforeGame && menu != Menues.Play)
{
	draw_set_font(fnt_menu_fill)
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	if (menu != Menues.BossSlain)
	{
		draw_text_transformed_color(90,810,"Back",backSize,backSize,0,global.orange,global.orange,backColor,backColor,1);
	}	
	if (menu == Menues.BossSlain)
	{
		if (obj_rewardChest.kingSuprise == false)
		{
			draw_text_transformed_color(90,810,"Back",backSize,backSize,0,global.orange,global.orange,backColor,backColor,1);
		}
	}
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
#endregion
#region Debugg
if (global.deBugg == true && menu == Menues.Play && instance_exists(global.player) && false)
{
	var playerHealth = "[Current/Max Health]: [" + string(obj_allPlayer.hp) + "] | ["  + string(obj_allPlayer.maxHp) +"]";
	var playerDmg = "[Damage]: [" + string(global.damage) + "]";
	var playerFireRate = "[Attack Speed]: [" + string(obj_allPlayer.leftClickCooldown/30) + "]";
	var playerSpeed = "[Base|Current Speed]: [" + string(obj_allPlayer.moveSpeed) + "] | ["  + string(obj_allPlayer.actualSpeed) +"]";
	var playerDashPower = "[Dash/Tp Power]: [" + string(bonusDash) + "]";
	var playerLifesteal = "[LifeSteal]: [" + string(global.lifeSteal) + "%]";
	var playerConjuration = "[Conjuration Power]: [" + string(obj_allPlayer.conjurationPower*100) + "%]";
	var playerCDRightClick = "[Right-Click Cooldown]: [" + string(obj_allPlayer.rightClickCooldown/30)+ "]";
	var playerCDDash = "[Dash Cooldown]: [" + string(obj_allPlayer.dashCooldown/30)+ "]";
	var playerCDUlt = "[Ultimate Cooldown]: [" + string(obj_allPlayer.ultCooldown/30)+ "]";
	var difficuluty = "[Difficulty]: [" + string(global.campaignDifficulty) + "]";
	var debuggText = "[]: [" + string(obj_allBoss.maxPhase) + "]";
	var debuggText = "[]: [" + string(chosenBoss) + "]";
	var debuggText = "[]: [" + string(chosenMode) + "]";
	
	var yIncreasse = 20;
	var textSize = 0.075;
	var xStart = 15;
	var yStart = 150;
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(xStart,yStart+1*yIncreasse,"Defensive & Mobility",textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,yStart+2*yIncreasse,playerHealth,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,yStart+3*yIncreasse,playerSpeed,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,yStart+4*yIncreasse,playerDashPower,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,yStart+5*yIncreasse+10,"Damage & Sustain",textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,yStart+6*yIncreasse+10,playerDmg,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,yStart+7*yIncreasse+10,playerFireRate,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,yStart+8*yIncreasse+10,playerLifesteal,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(xStart,yStart+9*yIncreasse+20,"Magic & Misc",textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);	
	draw_text_transformed_color(xStart,yStart+10*yIncreasse+20,playerCDRightClick,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);		
	draw_text_transformed_color(xStart,yStart+11*yIncreasse+20,playerCDDash,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStart,yStart+12*yIncreasse+20,playerCDUlt,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStart,yStart+13*yIncreasse+20,playerConjuration,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStart,yStart+14*yIncreasse+20,difficuluty,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStart,yStart+15*yIncreasse+20,debuggText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
if (global.showFps == true)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(25,900-25,"Fps(30):",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	fpsShowTimerStacks++;
	if (fpsShowTimerStacks >= 15)
	{	
		fpsShow = fps_real;
		fpsShowTimerStacks = 0;
	}
	draw_text_transformed_color(110,900-25,fpsShow,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(200,900-25,menu,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Cursur Menu
if (room == rm_menu || menu == Menues.Death)
{
	draw_sprite_ext(spr_cursorMenu,0,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),3,3,0,global.goldColor,1,);
}
#endregion
