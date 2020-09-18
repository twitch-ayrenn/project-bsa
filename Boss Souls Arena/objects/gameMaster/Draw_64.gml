/// @description Insert description here
var clickOnce = true;
#region Main Menu
if (menu == Menues.Main)
{
	var campaignSize = 1;
	var bossRushSize = 1;
	var controllsSize = 1;
	var sizeOfSetting = 1;
	var creditsSize = 1;
	
	var startY = 205;
	var sep = 110;
	
	#region Campaign
	if (device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*0 && device_mouse_y_to_gui(0) <startY + sep*1-20)
	{
		playColor = c_yellow;
		campaignSize = 1.05;
	}
	else 
	{ 
		playColor = global.darkYellow;
		campaignSize = 1;
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*0 && device_mouse_y_to_gui(0) <startY + sep*1-20)
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
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Boss Rush
	if (device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*1 && device_mouse_y_to_gui(0) <startY + sep*2-20)
	{
		playArenaColor = c_yellow;
		bossRushSize = 1.05;
	}
	else 
	{ 
		playArenaColor = global.darkYellow;
		bossRushSize = 1;
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*1 && device_mouse_y_to_gui(0) <startY + sep*2-20)
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
	#region Controls
	if (device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*2 && device_mouse_y_to_gui(0) <startY + sep*3-20)
	{
		controllsColor = c_yellow;
		controllsSize = 1.05;
	}
	else 
	{ 
		controllsColor = global.darkYellow;
		controllsSize = 1;
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*2 && device_mouse_y_to_gui(0) <startY + sep*3-20)
	{
		menu = Menues.Controlls;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	#region Settings
	if (device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*3 && device_mouse_y_to_gui(0) <startY + sep*4-20)
	{
		settingsColor = c_yellow;
		sizeOfSetting = 1.05;
	}
	else 
	{ 
		settingsColor = global.darkYellow;
		sizeOfSetting = 1;
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*3 && device_mouse_y_to_gui(0) <startY + sep*4-20 && clickOnce)
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
	if (device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*4 && device_mouse_y_to_gui(0) <startY + sep*5-20)
	{
		creditsColor = c_yellow;
		creditsSize = 1.05;
	}
	else 
	{ 
		creditsColor = global.darkYellow;
		creditsSize = 1;
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 80 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*4 && device_mouse_y_to_gui(0) <startY + sep*5-20)
	{
		menu = Menues.Credits;
		if (global.soundOn == true)
		{
			audio_play_sound(snd_buttonClick,Prioity.Normal,false);
		}
	}
	#endregion
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Boss Souls Arena",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_text_transformed_color(80,startY + sep*0,"Campaign",campaignSize,campaignSize,0,global.orange,global.orange,playColor,playColor,1);
	
	draw_text_transformed_color(80,startY + sep*1,"Arena Rush",bossRushSize,bossRushSize,0,global.orange,global.orange,playArenaColor,playArenaColor,1);
	
	draw_text_transformed_color(80,startY + sep*2,"Controls",controllsSize,controllsSize,0,global.orange,global.orange,controllsColor,controllsColor,1);
	
	draw_text_transformed_color(80,startY + sep*3,"Settings",sizeOfSetting,sizeOfSetting,0,global.orange,global.orange,settingsColor,settingsColor,1);

	draw_text_transformed_color(80,startY + sep*4,"Credits",creditsSize,creditsSize,0,global.orange,global.orange,creditsColor,creditsColor,1);
	
	draw_text_transformed_color(50,760,"Exit",exitSize,exitSize,0,exitColor,exitColor,exitColor,exitColor,1);
	
	if (backToMenuAlpha > 0){backToMenuAlpha -= clamp(0.45/30,0,1);}
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,backToMenuAlpha);
}
#endregion
#region Boss Loot
if (menu == Menues.BossLoot)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Loot",1.2,1.2,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_line_width(400,200,400,700,5);
	var line1X = 400;//400
	draw_line_width_color(line1X,200,line1X,200+500,5,global.orange,c_yellow);
	var line2X = 1135;
	draw_line_width_color(line2X,200,line2X,200+500,5,global.orange,c_yellow);
	
	var itemXIncrease = 119;
	draw_text_transformed_color(525,680,"Item Slots: " + string(global.maxItemSlots),0.35,0.35,0,global.orange,global.orange,c_yellow,c_yellow,1);
	var itemSlotSize = 0.25;
	var itemSlotY = 860;
	if(global.maxItemSlots >= 1){draw_text_transformed_color(445+1*itemXIncrease,itemSlotY,"Item I",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 2){draw_text_transformed_color(445+2*itemXIncrease,itemSlotY,"Item 2",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 3){draw_text_transformed_color(445+3*itemXIncrease,itemSlotY,"Item 3",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 4){draw_text_transformed_color(445+4*itemXIncrease,itemSlotY,"Item 4",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 5){draw_text_transformed_color(445+5*itemXIncrease,itemSlotY,"Item 5",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 6){draw_text_transformed_color(445+6*itemXIncrease,itemSlotY,"Item 6",itemSlotSize,itemSlotSize,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	//1161
	var startY = 280;
	var xStats = 45;
	var yIncreasse = 32.5;
	var textSize = 0.275;
	var infoTextX = 300 + shoveInX;
	var hpCalc = int64(100 + bonusHealth + previewHealth);
	if (chosenClass == Character.BloodKnight){hpCalc *= 2;}
	if (chosenClass == Character.AngelSlayer){hpCalc = 100;}
	var hpText = "Max Health: " + string(hpCalc);
	var spdCalc = 20 + bonusSpeed + previewSpeed
	var spdText = "Movement Speed: " + string(20 + bonusSpeed + previewSpeed);
	var dlCalc = 1 + (0 + bonusDash + previewDash)*0.01;
	var dlText = "Mobility Bonus: " + string(0 + bonusDash + previewDash) + "%";
	var dmgCalc = 10 + bonusDamage + previewDamage;
	if (global.itemSelected[Boss.AngelKnightOscar] == true){dmgCalc *= 0.55;}
	var dmgText = "Damage Scaling: " + string(int64(dmgCalc));
	var firerateCalc = 1 + ((bonusFirerate + previewFirerate)/100);
	var frText = "Bonus Attack Speed: " + string(int64(firerateCalc*100-100)) + "%";
	var lsText = "LifeSteal: " + string(80 + bonusLifeSteal + previewLifeSteal) + "%";//base is 75% for all damage
	var conjureCalc = 1 + (bonusConjur + previewConjur)/100;
	var cjText = "Summoning Power: " + string(int64(conjureCalc*100-100)) + "%";
	var cdrCap = 0.5;
	if (global.itemSelected[Boss.AngelKnightOscar] == true){cdrCap = 0.6;}
	var cdCalc = clamp((bonusCooldown + previewCooldown)/100,0,cdrCap);
	var cdText = "Cooldown reduction: " + string(int64(cdCalc*100)) + "%";
	
	
	draw_text_transformed_color(xStats,startY+1*yIncreasse,"Defense & Mobility Stats",textSize*1.1,textSize*1.1,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStats,startY+2*yIncreasse,hpText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStats,startY+3*yIncreasse,spdText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStats,startY+4*yIncreasse,dlText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStats,startY+5*yIncreasse+12,"Damage & Sustain Stats",textSize*1.1,textSize*1.1,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(xStats,startY+6*yIncreasse+12,dmgText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStats,startY+7*yIncreasse+12,frText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStats,startY+8*yIncreasse+12,lsText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(xStats,startY+9*yIncreasse+24,"Magical Stats",textSize*1.1,textSize*1.1,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStats,startY+10*yIncreasse+24,cjText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);		
	draw_text_transformed_color(xStats,startY+11*yIncreasse+24,cdText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
		
	#region Item descriptions
	shoveInX = 865;
	itemTextSize = 0.075;
	itemTextSeparationY = 24;
	draw_set_font(fnt_NewNormalText);
	infoTextX = 300 + shoveInX;
		#region No Item Selected
		if (itemShowInfoFor == Boss.NoBoss)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Select an item to the left by clicking",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"on it. Clear Selected items by pressing ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"the \"Clear Selected Items\" button.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4.5*itemTextSeparationY,"Hover over an item to see info about",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5.5*itemTextSeparationY,"that item. Permanent items are ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6.5*itemTextSeparationY,"unlocked on all characters.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"Hover over the stats on the left side",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"to see how the stats affects other",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"items and character abilities.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11.5*itemTextSeparationY,"Gain more item slots by slaying more",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12.5*itemTextSeparationY,"bosses. The max amount of item slots",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13.5*itemTextSeparationY,"you can obtain is 6.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "No Selected Item"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Health
		if (itemShowInfoFor == Boss.Health)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Determines how much damage you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"can take before dying.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Health"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Speed
		if (itemShowInfoFor == Boss.Speed)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"How fast you walk around. Some",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"bosses might require very high speed",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"to beat.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Movement Speed"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Mobility Bonus
		if (itemShowInfoFor == Boss.DashLength)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Increases the length of your dash and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"how far you can teleport.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Mobility Bonus"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Damage
		if (itemShowInfoFor == Boss.Damage)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Increases your damage and the ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"damage items do. ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"Exeptions are:",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"Bloodknights summoned bats.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"Plaguewalkers leeches",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Damage Scaling"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Attack Speed
		if (itemShowInfoFor == Boss.AttackSpeed)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Reduces the time between attacks.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"Exeptions are:",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"Pyromancer attacks.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"Death Scythe item",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Attack Speed"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Lifesteal
		if (itemShowInfoFor == Boss.Lifesteal)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"You heal for all damage you do.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"The amount healed is lifesteal ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"precentage times the damage dealt.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"Your base life steal is 80%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Lifesteal"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Cooldown Reduction
		if (itemShowInfoFor == Boss.CDR)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Reduces the cooldown on your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"abilities and ultimate ability. ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"Cooldown reduction is caped at",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"50% unless you have items that",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"increase the cap.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Cooldown Reduction"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		#region Summoning Power
		if (itemShowInfoFor == Boss.SummoningPower)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Summoning Power increases the power",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"of anything that has been summoned.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"This can either be by summoning more",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"things or increasing the damage or",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"the lifespan of the summoned thing.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			draw_set_font(fnt_menu_fill);
			var ItemName = "Summoning Power"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
		}
		#endregion
		
		#region Blood Zombie
		if (itemShowInfoFor == Boss.BloodZombie)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Ultimate] spawns an area that",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"increases your speed and damages",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"enemies that stand in the area.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Area Damage]: " + string(int64(dmgCalc)) + "/second";
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			var bztext2 = "[Speed Increase]: " +  string(50) + "%";
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,bztext2,itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+6.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 30 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 2 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Zombie Head"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Flame Wisp
		if (itemShowInfoFor == Boss.FlameWisp)
		{
			var fText = "Flamie apears every [" + string(int64(clamp(9/conjureCalc,3,9))) + "] seconds."
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,fText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"Walk to Flamie within a second and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"Flamie will shoot a giant flame ball at",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"your enemies. After a second Flamie",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"will disapear again. The spawn time",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"is reduced by [Summoning Power].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var fText2 = "[Projectile Damage]: " + string(int64(dmgCalc*5))
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+8.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 2 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 45% Summoning Power",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Flamie";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion	
		#region Corrupter
		if (itemShowInfoFor == Boss.TheCorrupter)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Standing still for 2 seconds shoots",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"a corruption beam that deals massive",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Beam Damage]: " + string(int64(dmgCalc*6));
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+5.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"+ 10% Cooldown reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 1 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"\" A horrible chill goes down",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"your spine...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item:" + "Edge of Corruption";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region DemonGate
		if (itemShowInfoFor == Boss.FlameGate)
		{
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"[Dashing] causes a demon claw to burst",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"from the ground. When erupting it",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"deals massive damage to enemies hit.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"The demon claw blocks all projectiles.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var dhText = "It lasts for [" + string(hpCalc/75) + "] seconds.";
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,dhText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"The time the claw stays up scales",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"with your [Max Health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);		
			var fText2 = "[Claw Damage]: " + string(int64(dmgCalc*10))
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 10 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 15% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Demon Horn"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Wisp sister julia
		if (itemShowInfoFor == Boss.WispSisterJulia)
		{
			draw_set_font(fnt_NewNormalText);
			var soldierAmount = "Summon [" + string(int64(clamp(2*conjureCalc,2,100))) +"] futuristic soldiers."
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,soldierAmount,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"They shoot where you aim.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"The amount of soldiers scale with ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"summoning power. Their firerate",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"scales with [Cooldown Reduction].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Projectile Damage]: " + string(int64(dmgCalc*0.35));
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 30% Summoning Power",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 7.5% Cooldown reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);

			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"\"I know we are losing...",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"...I want to know if we lost.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item:" + "Futuristic Soldier";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Death Knight
		if (itemShowInfoFor == Boss.DeathKnight)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Attack] is replaced with the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"Death Scythe slash.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"It spins around you and deals damage",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"to enemies hit.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"It always has an attack speed of 1 ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"attack every 3 seconds. All extra",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"[Attack Speed] is converted to damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Scythe Damage]: " + string(int64(dmgCalc*6*firerateCalc));
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 10% LifeSteal",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Death Scythe";
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Angel Slayer
		if (itemShowInfoFor == Boss.AngelSlayerRekZul)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Portals will apear in the arena and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"any creature or any projectiles can",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var portalCd = "travel between them once every [" + string(clamp(7*(1-cdCalc),2,7)) + "] ";
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,portalCd,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"seconds. The portals coooldown scales",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"with [Cooldown Reduction] and the ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"minimum cooldown is 2 seconds.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"Your weak projectiles cant teleport.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+8.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 3 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 5% Cooldown Reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"hmmm huuu huhhuuu?\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Obsidian Portal";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Knight Witch Yi
		if (itemShowInfoFor == Boss.KnightWitchYi)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Using your [Ability][1] summons",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var witchAmountT = "[" + string(int64(1*conjureCalc)) + "] witches that last for 4 seconds.";
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,witchAmountT,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"They shoot a projectile towards your" ,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"mouse cursor when you use your ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"[Attack]. The amount of witches scales",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"with [Summoining Power].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Projectile Damage]: " + string(int64(dmgCalc*2));
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+8.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 30% Bonus Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 30% Summoning Power",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"\"Doubt is the greatest enemy.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Death Cap"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Amgel Knight Oscar
		if (itemShowInfoFor == Boss.AngelKnightOscar)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Abilities] and [Ultimate] has a",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"35% reduced cooldown. However your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"damage is reduced by 45%. Increases",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"max cooldown reduction to 60%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+5.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"+ 30% Bonus Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 2 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"\"Perfectly balanced as all",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"things should be...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
		
			//name
			draw_set_font(fnt_menu_fill);
			if(global.ShowInfo == false){var ItemName = "Item: " + "Broken Hourglass";}
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Demon General Rektaar
		if (itemShowInfoFor == Boss.DemonLordRekTaar)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Attack] is replaced with",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"the Demon Portal. The portal can",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			frText = "summon an Impling every [" + string(6/firerateCalc) + "]";
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,frText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"seconds that charge in the direction",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"you aim. Dashing or Teleporting resets",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"the cooldown. [Summoning Power] also",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"increases the damage of the implings.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Imp Damage]: " + string(int64(dmgCalc*5*conjureCalc));
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 1 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 15% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"+ 2 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Imp Portal"
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Gravekeeper
		if (itemShowInfoFor == Boss.Gravekeeper)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Summon the Gravekeeper and she will",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"increase your speed if you walk",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"within her circle. The circle size",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"increases with [Summoning Power].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext2 = "[Speed Increase]: " +  string(20) + "%";
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,bztext2,itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+6.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 75% Summoning Power",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Gravekeeper";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Bloodarmy General
		if (itemShowInfoFor == Boss.BloodKnightDavid)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Ultimate] makes you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"invincible for 2 seconds. You can",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"not move during this effect and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"it costs 50% of your current health.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+5.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"+ 100 Max Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"- 5 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"\"Looking to protect yourself, or ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"deal some damage?\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Scroll of Blood"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Statue Of Corruption
		if (itemShowInfoFor == Boss.StatueOfCorruption)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"This item will grant you two",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"additonal items. The Items are chosen",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"randomly and will not grant the stats",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"only the passive ability. If you only",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"select this item you will be given a",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"full set of random items + 2 more.",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+20 Max Health +2 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+30% Bonus Attack Speed +3 Damage ",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 5% Cooldown reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"[Items that cant be found in the box]:",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"Death Scyhte, Broken Hourglass, The",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"Last Wish and Steamport Heart",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"\"Is this gambling?\"",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "The Lootbox"
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Wisp Sister Jana
		if (itemShowInfoFor == Boss.WispSisters)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"[Dashing] creates The Last Wish.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"If the player stands in the circle",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"range your [Damage Scaling] and ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"[Lifesteal] increase by 10%. If you ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"leave the circle you take 15% of",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"your health as damage every second.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"Dashing moves the sword to your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"current location.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 3% Lifesteal",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 3 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"\"If I have to choose between one evil",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"and another, I rather not choose.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "The Last Wish"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Demon Queens Head
		if (itemShowInfoFor == Boss.DemonQueensHead)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Replaces [Ultimate] with a big",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"fucking blast which always deals",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"200 damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"The blast leaves an area that",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"increases movement speed by 30%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bfText = "Cooldown [" + string(int64(20/(1+cdCalc)))  + "] seconds."
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,bfText,itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 30% Bonus Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 3 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"Weaponizing demons. For a ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"brighter Tomorrow!\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Bfb 9000"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Slime Queen
		if (itemShowInfoFor == Boss.SlimeQueen)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"When you use your [Ultimate] you will",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"enter T52 Slime Armor for 7 seconds. ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var t52Text = "With the armor on you will summon [" + string(int64(1*conjureCalc)) + "] ";
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,t52Text,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"slime with every [Attack] and [Ability].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"When inside the armor you will have",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"20% higher max health but you move ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"20% slower.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var slimeDamage = "[Slime Damage]: " + string(int64(dmgCalc));
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,slimeDamage,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 10% Cooldown Reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 15% Summoning Power",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"\"War never changes\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "T52 Slime Armor"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Death King
		if (itemShowInfoFor == Boss.DeathKing)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Ability][1] teleports you to",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"where you are aiming within the ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var deathKingText = "circle around you. You also gain [" + string(int64(hpCalc*0.02)) + "]% ";
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,deathKingText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"[Lifesteal]. The amount of [Lifesteal]",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"gained is 2% of [Max Health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+6.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 2 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 20 MaxHealth",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 16% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Death Bat"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Arena King
		if (itemShowInfoFor == Boss.ArenaKing)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Standing near the boss charges the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"crown. After 7 seconds of charge the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"crown deals massive damage to all",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"enemies inside the circle. The damage",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"scales with your [Max health].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var akctext = "[Crown Damage]: " + string(int64(hpCalc*0.7));
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 40 Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 20% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 2% Lifesteal",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"You made it! You killed me and now",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"you become me, the Arena King\".",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "The New King"
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Boss Rush Reward
		if (itemShowInfoFor == Boss.BossRushReward)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Replaces [Ultimate] with a Dash that ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"deals massive damage to enemies you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"dash trough. You do not take damage ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"when touching an enemy. The dash",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"damage is increased by speed and ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"mobility bonus.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var shText = "Cooldown [" + string(int64(18/(1+cdCalc)))  + "] seconds."
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,shText,itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			var akctext = "[Dash Damage]: " + string(int64(spdCalc*6*dlCalc));
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+9.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 5 Movement Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 5% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item:" + "Steamport Heart"
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Campaign Reward
		if (itemShowInfoFor == Boss.CampaignReward)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Attacking shoots a green hellbolt.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"Hiting the boss with 10 hellbolts",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"calls down the wrath of the demon",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"queen to deal massive damage to",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"your enemies.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var akctext = "[Queens Damage]: " + string(int64(dmgCalc*15));
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,akctext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 50% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 2% Lifesteal",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"You Did It. The Crazy Son of a",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"Bitch, You Did It!\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Permanent Item: " + "Queen's Eye"
			draw_text_transformed_color(infoTextX,340,ItemName,0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
	#endregion
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	draw_set_halign(fa_middle);
	draw_text_transformed_color(385,735,"Clear",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_text_transformed_color(385,785,"selected",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_text_transformed_color(385,835,"items",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_set_halign(fa_left);
	
	draw_text_transformed_color(1310,760,"Fight!",fightSize,fightSize,0,c_red,c_red,fightColor,fightColor,1);
	
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
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Settings",1.4,1.4,0,c_gray,c_gray,c_white,c_white,1);
	
	var headlineSize = 0.5;
	var settingSize = 0.35;
	var sep = 50;
	var startY = 190;
	
	var pressOnce = true;
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*1 && device_mouse_y_to_gui(0) <startY + sep*2-20)
	{
		if (window_get_fullscreen() == false && pressOnce == true){window_set_fullscreen(true); pressOnce = false;}
		if (window_get_fullscreen() == true && pressOnce == true){window_set_fullscreen(false); pressOnce = false;}
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*2 && device_mouse_y_to_gui(0) <startY + sep*3-20)
	{
		if (global.screenShake == false && pressOnce == true){global.screenShake = true; pressOnce = false;}
		if (global.screenShake == true && pressOnce == true){global.screenShake = false; pressOnce = false;}
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*3 && device_mouse_y_to_gui(0) <startY + sep*4-20)
	{
		if (global.dashTowardsMove == false && pressOnce == true){global.dashTowardsMove = true; pressOnce = false;}
		if (global.dashTowardsMove == true && pressOnce == true){global.dashTowardsMove = false; pressOnce = false;}
	}
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*4 && device_mouse_y_to_gui(0) <startY + sep*5-20)
	{
		if (global.autoAim == false && pressOnce == true){global.autoAim = true; pressOnce = false;}
		if (global.autoAim == true && pressOnce == true){global.autoAim = false; pressOnce = false;}
	}	
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*5 && device_mouse_y_to_gui(0) <startY + sep*6-20)
	{
		if (global.colorBlindIcons == false && pressOnce == true){global.colorBlindIcons = true; pressOnce = false;}
		if (global.colorBlindIcons == true && pressOnce == true){global.colorBlindIcons = false; pressOnce = false;}
	}	
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*6 && device_mouse_y_to_gui(0) <startY + sep*7-20)
	{
		if (global.colorBlindText == false && pressOnce == true){global.colorBlindText = true; pressOnce = false;}
		if (global.colorBlindText == true && pressOnce == true){global.colorBlindText = false; pressOnce = false;}
	}
	
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*8 && device_mouse_y_to_gui(0) <startY + sep*9-20 && clickOnce)
	{
		clickOnce = false;
		if (global.musicOn == false && pressOnce == true){global.musicOn = true; pressOnce = false;}
		if (global.musicOn == true && pressOnce == true){global.musicOn = false; pressOnce = false;}
	}	
	if (mouse_check_button_released(mb_left) && device_mouse_x_to_gui(0) > 70 && device_mouse_x_to_gui(0) < 550 && device_mouse_y_to_gui(0) > startY + sep*9 && device_mouse_y_to_gui(0) <startY + sep*10-20)
	{
		if (global.soundOn == false && pressOnce == true){global.soundOn = true; pressOnce = false;}
		if (global.soundOn == true && pressOnce == true){global.soundOn = false; pressOnce = false;}
	}	
	
	draw_text_transformed_color(70,startY + sep*0,"Gameplay",headlineSize,headlineSize,0,c_gray,c_gray,c_white,c_white,1);
	if (window_get_fullscreen() == false){draw_text_transformed_color(80,startY + sep*1,"Fullscreen: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (window_get_fullscreen() == true){draw_text_transformed_color(80,startY + sep*1,"Fullscreen: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.screenShake == false){draw_text_transformed_color(80,startY + sep*2,"Screen Shake: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.screenShake == true){draw_text_transformed_color(80,startY + sep*2,"Screen Shake: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.dashTowardsMove == false){draw_text_transformed_color(80,startY + sep*3,"Dash Towards Mouse: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.dashTowardsMove == true){draw_text_transformed_color(80,startY + sep*3,"Dash Towards Mouse: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.autoAim == false){draw_text_transformed_color(80,startY + sep*4,"Aim Assistance: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.autoAim == true){draw_text_transformed_color(80,startY + sep*4,"Aim Assistance: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindIcons == false){draw_text_transformed_color(80,startY + sep*5,"Color Blind Attack Icons: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindIcons == true){draw_text_transformed_color(80,startY + sep*5,"Color Blind Attack Icons: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindText == false){draw_text_transformed_color(80,startY + sep*6,"Color Blind Attack Text: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.colorBlindText == true){draw_text_transformed_color(80,startY + sep*6,"Color Blind Attack Text: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	
	draw_text_transformed_color(70,startY + sep*7,"Audio",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.musicOn == false){draw_text_transformed_color(80,startY + sep*8,"Music: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.musicOn == true){draw_text_transformed_color(80,startY + sep*8,"Music: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.soundOn == false){draw_text_transformed_color(80,startY + sep*9,"Sound: Off",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}
	if (global.soundOn == true){draw_text_transformed_color(80,startY + sep*9,"Sound: On",settingSize,settingSize,0,c_gray,c_gray,c_white,c_white,1);}

	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Character Select
if (menu == Menues.PlayerSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Select a Fighter",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);

	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Credits
if (menu == Menues.Credits)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Credits",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	var headlineSize = 0.4;
	var textSize = 0.08;
	var sep = 27;
	var startY = 205;
	
	draw_text_transformed_color(80,startY-10 + sep*0,"Development",headlineSize,headlineSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(65,startY + sep*1,"Hey! My name is Arrjan Tarach and i ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*2,"programmed, designed and drew everything",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*3,"in this game. This is my first really big ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*4,"project and i have worked on this project",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*5,"for 2 years. I really hope you enjoy it:)",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*6,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*7,"Outline Shader By: Gurpreet Singh Matharoo",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*8,"Normal Text Font: opendyslexic.org",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*9,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*10,"Special Thanks To!:",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*11,"Filip Zachrisson Hansen",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*12,"Jonathan Eriksson",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*13,"Martin Gullersbo",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*14,"Kevin Evason",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*15,"Anton Palmer",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*16,"Saga Lindquist",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*17,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*18,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*19,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_set_font(fnt_menu_fill);
	
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Controlls
if (menu == Menues.Controlls)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Controlls and Info",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	var headlineSize = 0.4;
	var textSize = 0.08;
	var sep = 23.5;
	var startY = 205;
	
	draw_text_transformed_color(80,startY-10 + sep*0,"Controlls",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(65,startY + sep*1,"Move with [W] & [A] & [S] & [D] keys.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*2,"Attack with Left Click or 1",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*3,"[Ability][1]: Right Click or 2",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*4,"[Ability][2]: Space",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*5,"[Ultimate]: Q or E or R",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*6,"[ESC]: Go back to main menu",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*7,"Ability cooldowns can be viewed in the",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*8,"upper left corner when in the arena.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(80,startY-10 + sep*10,"Healing & Dodging Damage",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(65,startY + sep*11,"Health is indicated by the big red bar in the",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*12,"upper left corner when in the arena. You ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*13,"heal by doing damage to your opponent. ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*14,"While dashing you are invincible, can't take",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*15,"any damage and move trough projectiles.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(80,startY-10 + sep*17,"Winning and Rewards",headlineSize,headlineSize,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText)
	draw_text_transformed_color(65,startY + sep*18,"You win by defeating you opponent in the",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*19,"arena. Every time you defeat a boss you",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*20,"gain an item. Slaying bosses unlocks more",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_text_transformed_color(65,startY + sep*21,"item slots over time.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,1);
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Boss Select
if (menu == Menues.BossSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Fight",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450+375;
	var progressionText = "";
	if (chosenClass == Character.ShadowAssassin){progressionText = "Campaign Progression: " + string(int64(	(((assassinProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.Pyromancer){progressionText = "Campaign Progression: " + string(int64(	(((pyromancerProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.BloodKnight){progressionText = "Campaign Progression: " + string(int64(	(((bloodKnightProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.PlaugeWalker){progressionText = "Campaign Progression: " + string(int64(	(((plaugeWalkerProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.Graveling){progressionText = "Campaign Progression: " + string(int64(	(((gravelingProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.AgentOfGod){progressionText = "Campaign Progression: " + string(int64(	(((agentOfGodProgress-1)/1.5)/18)*100	)	) + "%";}
	if (chosenClass == Character.AngelSlayer){progressionText = "Campaign Progression: " + string(int64(	(((angelSlayerProgress-1)/1.5)/18)*100	)	) + "%";}

	draw_text_transformed_color(cX,cY-45,progressionText,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,0.65);
	draw_text_transformed_color(cX,cY,"Press A or D to scroll in this menu",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,0.65);
	draw_set_halign(fa_left);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	if (queFight == true)
	{
		if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.4/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,fightTransitionAlpha);
		if (fightTransitionAlpha == 1){room_goto(rm_arena);	menu = Menues.Play; transitionAlpha = 1;queFight = false;}
	}
}
#endregion
#region In Game
if (menu == Menues.Play)
{
	//Tutorial
	if (transitionAlpha > 0 && global.tutorialBoss == false){transitionAlpha -= clamp(0.5/30,0,1)}
	if (global.tutorial == true)
	{
		draw_sprite_ext(spr_tutorial_boss,0,0,0,0.8333*10,0.8333*10,0,c_white,transitionAlpha-0.15);
		draw_sprite_ext(spr_arenaKingTutorial,0,1400,750,-10,10,0,c_white,transitionAlpha);
		draw_set_halign(fa_center);
		var xText = 800;
		var yText = 580;
		var textSize = 0.075;
		var bigTextSize = textSize*1.5;
		var TSY = 20;
		
		draw_set_font(fnt_NewNormalText)
		draw_text_transformed_color(800,295,"This is your opponent",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,yText+TSY*0,"Below is its health bar. The small red circles",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,yText+TSY*1,"below it indicate how many phases the boss has.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,yText+TSY*2,"The Crystal in the middle and your opponents eyes",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,yText+TSY*3,"indicate which attack your opponent will do.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(150,800,"Click Any Key",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(150,830,"To Continue",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_set_halign(fa_left);
		if (tutorialAlpha > 0){tutorialAlpha -= clamp(0.5/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,tutorialAlpha);
	}
	if (instance_exists(global.player))
	{
		if (global.player.state == States.Tutorial && obj_allBoss.state == BossStates.Tutorial && global.tutorialPlayer == true)
		{
			if (playerTutorialAlpha < 1 && tutorialFadeOut == false){playerTutorialAlpha += clamp(0.3/30,0,1);}
			if (tutorialFadeOut == true && playerTutorialAlpha > 0){playerTutorialAlpha -= clamp(0.5/30,0,1);}
			draw_sprite_ext(spr_tutorial_player,0,0,0,0.8333*10,0.8333*10,0,c_white,playerTutorialAlpha - 0.15);
			draw_set_halign(fa_center);
			var xText = 800;
			var yText = 30;
			var textSize = 0.075;
			var bigTextSize = textSize*1.5;
			var TSY = 20;
			
			draw_set_font(fnt_NewNormalText)
			draw_text_transformed_color(800,550,"This is you.",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*0,"Controlls",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*1,"Move with [W] & [A] & [S] & [D] keys.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*2,"Attack with Left Click or 1",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*3,"[Ability][1]: Right Click or 2",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*4,"[Ability][2]: Space",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*5,"[Ultimate]: Q or E or R",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*6,"Ability cooldowns can be viewed in the",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*7,"upper left corner.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			
			draw_text_transformed_color(xText,yText+TSY*9,"Healing",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*10,"Health is indicated by the big red bar",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*11,"in the upper left corner. You heal by",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*12,"doing damage to your opponent. The best",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*13,"way to to succeed in the arena is to be",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(xText,yText+TSY*14,"aggresive and relentless.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				
			draw_sprite_ext(spr_arenaKingTutorial,0,1200,250,-10,10,0,c_white,playerTutorialAlpha);
			draw_set_halign(fa_left);
			draw_set_halign(fa_center);
			draw_text_transformed_color(150,800,"Click Any Key",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(150,830,"To Continue",bigTextSize,bigTextSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_set_halign(fa_left);
		}
		if (tutorialFadeOut == true && playerTutorialAlpha == 0)
		{
			global.tutorialPlayer = false;
			obj_allBoss.state = BossStates.Fighting;
			global.player.state = States.Idle;
		}
	}
	//Fade
	if (global.tutorial == false){draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,transitionAlpha);}
	//Boss Text
	draw_set_font(fnt_menu_fill);
	if (fightAlpha > 0 && transitionAlpha < 0.75){fightAlpha -= clamp(0.3/30,0,1)}
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450-350;
	var nameSize = 1.3;
	if(chosenBoss == Boss.BloodZombie){draw_text_transformed_color(cX,cY,"The Blood Harvester",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.FlameWisp){draw_text_transformed_color(cX,cY,"Wisp Sister Anna",nameSize,nameSize,0,global.orange,global.orange,c_orange,c_orange,fightAlpha);}
	if(chosenBoss == Boss.TheCorrupter){draw_text_transformed_color(cX,cY,"The Corrupter",nameSize,nameSize,0,c_purple,c_purple,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.FlameGate){draw_text_transformed_color(cX,cY,"Eye of Hell",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.WispSisterJulia){draw_text_transformed_color(cX,cY,"Wisp Sister Julia",nameSize,nameSize,0,c_aqua,c_aqua,c_teal,c_teal,fightAlpha);}
	if(chosenBoss == Boss.DeathKnight){draw_text_transformed_color(cX,cY,"Death Knight",nameSize,nameSize,0,c_silver,c_silver,c_gray,c_gray,fightAlpha);}
	if(chosenBoss == Boss.AngelSlayerRekZul){draw_text_transformed_color(cX,cY,"Angel Slayer Rekzul",nameSize,nameSize,0,c_maroon,c_maroon,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.KnightWitchYi){draw_text_transformed_color(cX,cY,"Knight Witch Gi",nameSize,nameSize,0,c_red,c_red,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.AngelKnightOscar){draw_text_transformed_color(cX,cY,"Angel Knight Oscar",nameSize,nameSize,0,c_aqua,c_aqua,c_silver,c_silver,fightAlpha);}
	if(chosenBoss == Boss.DemonLordRekTaar){draw_text_transformed_color(cX,cY,"Demon General Rektaar",nameSize,nameSize,0,global.orange,global.orange,c_yellow,c_yellow,fightAlpha);}
	if(chosenBoss == Boss.Gravekeeper){draw_text_transformed_color(cX,cY,"The Gravekeeper",nameSize,nameSize,0,c_white,c_white,c_silver,c_silver,fightAlpha);}
	if(chosenBoss == Boss.BloodKnightDavid){draw_text_transformed_color(cX,cY,"Blood Army General",nameSize,nameSize,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.StatueOfCorruption){draw_text_transformed_color(cX,cY,"Statue Of Corruption",nameSize,nameSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,fightAlpha);}
	if(chosenBoss == Boss.WispSisters){draw_text_transformed_color(cX,cY,"Wisp Sisters",nameSize,nameSize,0,global.orange,c_aqua,c_aqua,global.orange,fightAlpha);}
	if(chosenBoss == Boss.DemonQueensHead){draw_text_transformed_color(cX,cY,"Demon Queens Head",nameSize,nameSize,0,c_red,c_red,c_red,c_red,fightAlpha);}
	if(chosenBoss == Boss.DeathKing){draw_text_transformed_color(cX,cY,"Death King",nameSize,nameSize,0,c_black,global.goldColor,global.goldColor,c_black,fightAlpha);}
	if(chosenBoss == Boss.SlimeQueen){draw_text_transformed_color(cX,cY,"Slime Queen",nameSize,nameSize,0,c_lime,global.goldColor,global.goldColor,c_lime,fightAlpha);}
	if(chosenBoss == Boss.ArenaKing){draw_text_transformed_color(cX,cY,"The Arena King",nameSize,nameSize,0,c_yellow,c_yellow,global.goldColor,global.goldColor,fightAlpha);}
	draw_set_halign(fa_left);
	if (transitionAlpha == 0 && instance_exists(obj_allBoss) && instance_exists(global.player) && instance_exists(obj_camera) && checkOnce == true)
	{
		checkOnce = false;
		obj_allBoss.state = BossStates.Fighting;
		global.player.state = States.Idle;
		obj_camera.state = CameraStates.PlayerView;
		if (global.tutorial == true)
		{
			global.player.state = States.Tutorial;
			obj_allBoss.state = BossStates.Tutorial;
			global.tutorialPlayer = true;
		}
	}
}
#endregion
#region Victory Screen
if (menu == Menues.BossSlain)
{
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450-350;
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(cX,cY,"Victory!",2.5,2.5,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	draw_set_halign(fa_left);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);	
	
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
	deathAlpha += clamp(0.5/30,0,1);
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,deathAlpha);
	
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450-350;
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(cX,cY,"Defeat",3,3,0,c_red,c_red,c_maroon,c_maroon,deathAlpha);
	draw_set_halign(fa_left);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,deathAlpha);	
	
	if (queLeave == true)
	{
		if (leaveTranistionAlpha < 1){leaveTranistionAlpha += clamp(0.5/30,0,1)}
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
