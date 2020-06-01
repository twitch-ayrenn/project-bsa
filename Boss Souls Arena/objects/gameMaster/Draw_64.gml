/// @description Insert description here
#region Main Menu
if (menu == Menues.Main)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Boss Souls Arena",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_text_transformed_color(100,200,"Campaign",playSize,playSize,0,global.orange,global.orange,playColor,playColor,1);
	
	draw_text_transformed_color(100,310,"Credits",playArenaSize,playArenaSize,0,global.orange,global.orange,playArenaColor,playArenaColor,1);
	
	draw_text_transformed_color(100,660-160,"",statsSize,statsSize,0,c_yellow,c_yellow,statsColor,statsColor,1);
	
	draw_text_transformed_color(100,420,"Settings",settingsSize,settingsSize,0,global.orange,global.orange,settingsColor,settingsColor,1);
	
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
	
	var itemXIncrease = 120;
	draw_text_transformed_color(525,710,"Item Slots",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	if(global.maxItemSlots >= 1){draw_text_transformed_color(435+1*itemXIncrease,855,"Item I",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 2){draw_text_transformed_color(435+2*itemXIncrease,855,"Item II",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 3){draw_text_transformed_color(435+3*itemXIncrease,855,"Item III",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 4){draw_text_transformed_color(435+4*itemXIncrease,855,"Item IV",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 5){draw_text_transformed_color(435+5*itemXIncrease,855,"Item V",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 6){draw_text_transformed_color(435+6*itemXIncrease,855,"Item VI",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	
	var startY = 280;
	var xStats = 45;
	var yIncreasse = 32.5;
	var textSize = 0.275;
	var infoTextX = 300 + shoveInX;
	var hpCalc = int64(100 + bonusHealth + previewHealth);
	if (chosenClass == Character.BloodKnight){hpCalc *= 2;}
	if (chosenClass == Character.AngelSlayer){hpCalc = 100;}
	var hpText = "Max Health: " + string(hpCalc);
	var spdText = "Movement Speed: " + string(20 + bonusSpeed + previewSpeed);
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
	if (itemShowInfoFor == Boss.NoBoss)
	{
		infoTextX = 300 + shoveInX;
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Select an [Item] to the left by",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"clicking on it.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"Hover over an [Item] to see info",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"about that [Item].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"Clear Selected [Items] by ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"pressing the \"Clear Selected Items\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"button.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_set_font(fnt_menu_fill);
		//draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"Hover over the stats on the left",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"side to see how the stats affects",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"other items and character abilities.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		var ItemName = "No Selected Item"
		draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
	}
	
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
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 16% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
		
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
			var ItemName = "Item: " + "Death Scythe";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"+ 16% Mobility Bonus",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"+ 2 Damage Scaling",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "Imp Portal"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
			var ItemName = "Item:" + "Gravekeeper";
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
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"Last Wish.",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"\"Is this gambling?\"",itemTextSize,itemTextSize,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
			
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item: " + "The Lootbox"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,bfText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
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
	#endregion
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	draw_set_halign(fa_middle);
	draw_text_transformed_color(385,735,"Clear",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_text_transformed_color(385,785,"selected",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_text_transformed_color(385,835,"items",clearSize/2,clearSize/2,0,c_red,c_red,clearColor,clearColor,1);
	draw_set_halign(fa_left);
	
	draw_text_transformed_color(1310,760,"Fight!",fightSize,fightSize,0,c_red,c_red,fightColor,fightColor,1);
}
#endregion
#region Settings
if (menu == Menues.Settings)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Settings",1.5,1.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_text_transformed_color(80,210,"Gameplay",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_text_transformed_color(70,270,"Show Extra info:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.ShowInfo == true)
	{
		draw_text_transformed_color(435,270,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_text_transformed_color(515,270,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.ShowInfo == false)
	{
		draw_text_transformed_color(435,270,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_text_transformed_color(515,270,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	draw_text_transformed_color(80,330,"Visual",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_text_transformed_color(70,390,"Fullscreen:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (window_get_fullscreen() == true)
	{
		draw_text_transformed_color(315,390,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_text_transformed_color(390,390,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (window_get_fullscreen()  == false)
	{
		draw_text_transformed_color(315,390,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_text_transformed_color(390,390,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	draw_text_transformed_color(80,450,"Audio",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	
	draw_text_transformed_color(70,510,"Music:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.musicOn == true)
	{
		draw_text_transformed_color(200,510,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_text_transformed_color(290,510,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.musicOn == false)
	{
		draw_text_transformed_color(200,510,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_text_transformed_color(290,510,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	
	draw_text_transformed_color(70,570,"Ambient:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	if (global.ambientOn == true)
	{
		draw_text_transformed_color(250,570,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);
		
		draw_text_transformed_color(330,570,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.ambientOn == false)
	{
		draw_text_transformed_color(250,570,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_text_transformed_color(330,570,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	draw_text_transformed_color(70,630,"Sound:  /",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);	
	if (global.soundOn == true)
	{
		draw_text_transformed_color(220,630,"On",0.5,0.5,0,c_green,c_green,c_white,c_white,1);

		draw_text_transformed_color(300,630,"Off",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
	}
	if (global.soundOn == false)
	{
		draw_text_transformed_color(220,630,"On",0.5,0.5,0,c_gray,c_gray,c_white,c_white,1);
		
		draw_text_transformed_color(300,630,"Off",0.5,0.5,0,c_red,c_red,c_white,c_white,1);
	}
	
	draw_text_transformed_color(70,690,"Reset Progression!",0.5,0.5,0,c_red,c_red,c_dkgray,c_dkgray,1);

	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Character Select
if (menu == Menues.PlayerSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select a Fighter",1.5,1.5,0,global.orange,global.orange,c_yellow,c_yellow,1);

	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
#endregion
#region Boss Select
if (menu == Menues.BossSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Fight",1.5,1.5,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_set_halign(fa_center);
	var cX = 800;//center x
	var cY = 450+375;
	draw_text_transformed_color(cX,cY,"Press A or D to scroll in this menu",0.5,0.5,0,global.orange,global.orange,c_yellow,c_yellow,0.65);
	draw_set_halign(fa_left);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	if (queFight == true)
	{
		if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.3/30,0,1)}
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
		var textSize = 0.1;
		draw_text_transformed_color(800,275,"This is your opponent",0.6,0.6,0,c_lime,c_lime,c_green,c_green,transitionAlpha);
		draw_set_font(fnt_NewNormalText)
		draw_text_transformed_color(800,580,"Below is its health bar. The small red circles below it indicate ",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,615,"how many phases the boss has. The Crystal in the middle and your",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(800,650,"opponents eyes indicate which attack your opponent will do.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(150,800,"Click Any Key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
		draw_text_transformed_color(150,830,"To Continue",textSize,textSize,0,c_white,c_white,c_silver,c_silver,transitionAlpha);
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
			#region The Shadow Assassin
			var xText = 800;
			var yText = 40;
			var textSize = 0.095;
			var TSY = 25;
			if (chosenClass == Character.ShadowAssassin)
			{
				
				draw_set_font(fnt_menu_fill)
				draw_text_transformed_color(800,550,"The Shadow Assassin",0.4,0.4,0,c_fuchsia,c_fuchsia,c_purple,c_purple,playerTutorialAlpha);
				//
				draw_set_font(fnt_NewNormalText)
				draw_text_transformed_color(xText,yText+TSY*0,"To the left is your hud. It displays all",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*1,"your cooldowns on your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*2,"Hover over the hud with your mouse",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*3,"to see your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*4,"Using an ability puts that ability on",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*5,"cooldown. You are an assassin and all",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*6,"your abilities allow you to recast your",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*7,"[Left-Click] ability again. Teleport inside",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*8,"your enemies to maxemize your damage.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*9,"You move with [W] & [A] & [S] & [D].",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			}
			#endregion
			#region The Pyromancer
			if (chosenClass == Character.Pyromancer)
			{
				draw_set_font(fnt_menu_fill)
				draw_text_transformed_color(800,550,"The Pyromancer",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,playerTutorialAlpha);
				//
				draw_set_font(fnt_NewNormalText)
				draw_text_transformed_color(xText,yText+TSY*0,"To the left is your hud. It displays all",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*1,"your cooldowns on your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*2,"Hover over the hud with your mouse",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*3,"to see your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*4,"Using an ability puts that ability on",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*5,"cooldown. You are a spellcaster which",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*6,"which has powerful spells but with high",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*7,"cooldowns. Your dash however is on a low",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*8,"cooldown so use it often.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*9,"You move with [W] & [A] & [S] & [D].",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			}
			#endregion
			#region The Blood Knight
			if (chosenClass == Character.BloodKnight)
			{
				var xText = 800;
				var yText = 50;
				var textSize = 0.1;
				draw_set_font(fnt_menu_fill)
				draw_text_transformed_color(800,550,"The Blood Knight",0.4,0.4,0,c_red,c_red,c_maroon,c_maroon,playerTutorialAlpha);
				//
				draw_set_font(fnt_NewNormalText)
				draw_text_transformed_color(xText,yText+TSY*0,"To the left is your hud. It displays all",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*1,"your cooldowns on your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*2,"Hover over the hud with your mouse",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*3,"to see your abilities.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*4,"Using an ability puts that ability on",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*5,"cooldown. As a summoner you can summon",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*6,"your bats all the time with your",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*7,"[Left-Click] ability.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*8,"",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				draw_text_transformed_color(xText,yText+TSY*9,"You move with [W] & [A] & [S] & [D].",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
				
				draw_text_transformed_color(xText,yText+30*19,"You move with the [W] & [A] & [S] & [D] keys.",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			}
			#endregion
			draw_sprite_ext(spr_arenaKingTutorial,0,1200,250,-10,10,0,c_white,playerTutorialAlpha);
			draw_set_halign(fa_left);
			draw_set_halign(fa_center);
			draw_text_transformed_color(150,800,"Click Any Key",textSize,textSize,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
			draw_text_transformed_color(150,830,"To Continue",0.1,0.1,0,c_white,c_white,c_silver,c_silver,playerTutorialAlpha);
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
	if(chosenBoss == Boss.BloodZombie){draw_text_transformed_color(cX,cY,"The Blood Harvester",1.5,1.5,0,c_lime,c_lime,c_green,c_green,fightAlpha);}
	if(chosenBoss == Boss.FlameWisp){draw_text_transformed_color(cX,cY,"Wisp Sister Anna",1.5,1.5,0,global.orange,global.orange,c_orange,c_orange,fightAlpha);}
	if(chosenBoss == Boss.TheCorrupter){draw_text_transformed_color(cX,cY,"The Corrupter",1.5,1.5,0,c_purple,c_purple,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.FlameGate){draw_text_transformed_color(cX,cY,"Eye of Hell",1.5,1.5,0,c_red,c_red,c_maroon,c_maroon,fightAlpha);}
	if(chosenBoss == Boss.WispSisterJulia){draw_text_transformed_color(cX,cY,"Wisp Sister Julia",1.5,1.5,0,c_aqua,c_aqua,c_teal,c_teal,fightAlpha);}
	if(chosenBoss == Boss.DeathKnight){draw_text_transformed_color(cX,cY,"Death Knight",1.5,1.5,0,c_silver,c_silver,c_gray,c_gray,fightAlpha);}
	if(chosenBoss == Boss.AngelSlayerRekZul){draw_text_transformed_color(cX,cY,"Angel Slayer Rekzul",1.5,1.5,0,c_maroon,c_maroon,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.KnightWitchYi){draw_text_transformed_color(cX,cY,"Knight Witch Gi",1.5,1.5,0,c_red,c_red,c_black,c_black,fightAlpha);}
	if(chosenBoss == Boss.AngelKnightOscar){draw_text_transformed_color(cX,cY,"Angel Knight Oscar",1.5,1.5,0,c_aqua,c_aqua,c_silver,c_silver,fightAlpha);}
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
//if (global.deBugg == false && menu == Menues.Play && instance_exists(global.player))
//{
//	var playerHealth = "[Current/Max Health]: [" + string(obj_allPlayer.hp) + "] | ["  + string(obj_allPlayer.maxHp) +"]";
//	var playerDmg = "[Damage]: [" + string(global.damage) + "]";
//	var playerFireRate = "[Attack Speed]: [" + string(obj_allPlayer.leftClickCooldown/30) + "]";
//	var playerSpeed = "[Base|Current Speed]: [" + string(obj_allPlayer.moveSpeed) + "] | ["  + string(obj_allPlayer.actualSpeed) +"]";
//	var playerDashPower = "[Dash/Tp Power]: [" + string(bonusDash) + "]";
//	var playerLifesteal = "[LifeSteal]: [" + string(global.lifeSteal) + "%]";
//	var playerConjuration = "[Conjuration Power]: [" + string(obj_allPlayer.conjurationPower*100) + "%]";
//	var playerCDRightClick = "[Right-Click Cooldown]: [" + string(obj_allPlayer.rightClickCooldown/30)+ "]";
//	var playerCDDash = "[Dash Cooldown]: [" + string(obj_allPlayer.dashCooldown/30)+ "]";
//	var playerCDUlt = "[Ultimate Cooldown]: [" + string(obj_allPlayer.ultCooldown/30)+ "]";
	
//	var yIncreasse = 20;
//	var textSize = 0.075;
//	var xStart = 15;
//	var yStart = 150;
//	draw_set_font(fnt_NewNormalText);
//	draw_text_transformed_color(xStart,yStart+1*yIncreasse,"Defensive & Mobility",textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
//	draw_text_transformed_color(xStart,yStart+2*yIncreasse,playerHealth,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
//	draw_text_transformed_color(xStart,yStart+3*yIncreasse,playerSpeed,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
//	draw_text_transformed_color(xStart,yStart+4*yIncreasse,playerDashPower,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
//	draw_text_transformed_color(xStart,yStart+5*yIncreasse+10,"Damage & Sustain",textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
//	draw_text_transformed_color(xStart,yStart+6*yIncreasse+10,playerDmg,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
//	draw_text_transformed_color(xStart,yStart+7*yIncreasse+10,playerFireRate,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
//	draw_text_transformed_color(xStart,yStart+8*yIncreasse+10,playerLifesteal,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
//	draw_text_transformed_color(xStart,yStart+9*yIncreasse+20,"Magic & Misc",textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);	
//	draw_text_transformed_color(xStart,yStart+10*yIncreasse+20,playerCDRightClick,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);		
//	draw_text_transformed_color(xStart,yStart+11*yIncreasse+20,playerCDDash,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
//	draw_text_transformed_color(xStart,yStart+12*yIncreasse+20,playerCDUlt,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
//	draw_text_transformed_color(xStart,yStart+13*yIncreasse+20,playerConjuration,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
//}
//if (global.showFps == true)
//{
//	draw_set_font(fnt_menu_fill);
//	draw_text_transformed_color(25,900-25,"Fps(30):",0.2,0.2,0,c_white,c_white,c_white,c_white,1);
//	fpsShowTimerStacks++;
//	if (fpsShowTimerStacks >= 15)
//	{	
//		fpsShow = fps_real;
//		fpsShowTimerStacks = 0;
//	}
//	draw_text_transformed_color(110,900-25,fpsShow,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
//	draw_text_transformed_color(200,900-25,menu,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
//}
#endregion
#region Cursur Menu
if (room == rm_menu || menu == Menues.Death)
{
	draw_sprite_ext(spr_cursorMenu,0,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),3,3,0,global.goldColor,1,);
}
#endregion
