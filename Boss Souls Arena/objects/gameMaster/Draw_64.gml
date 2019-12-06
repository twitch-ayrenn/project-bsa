/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu_fill);
if (menu == Menues.Main || menu == Menues.BossLoot || menu == Menues.PlayerSelect || menu == Menues.BossSlain)
{
	
}
if (menu == Menues.Main)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,50,"Boss Souls Arena",1.4,1.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,200,"Campaign",playSize,playSize,0,global.orange,global.orange,playColor,playColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,310,"Credits",playArenaSize,playArenaSize,0,global.orange,global.orange,playArenaColor,playArenaColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,660-160,"",statsSize,statsSize,0,c_yellow,c_yellow,statsColor,statsColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(100,420,"Settings",settingsSize,settingsSize,0,global.orange,global.orange,settingsColor,settingsColor,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Exit",exitSize,exitSize,0,exitColor,exitColor,exitColor,exitColor,1);
	
	if (backToMenuAlpha > 0){backToMenuAlpha -= clamp(0.45/30,0,1);}
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,backToMenuAlpha);
}
if (menu == Menues.BossLoot)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Loot",1.2,1.2,0,global.orange,global.orange,c_yellow,c_yellow,1);

	draw_text_transformed_color(1075,110,"Items",0.6,0.6,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	var itemXIncrease = 120;
	draw_text_transformed_color(525,710,"Item Slots",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	if(global.maxItemSlots >= 1){draw_text_transformed_color(435+1*itemXIncrease,855,"Item I",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 2){draw_text_transformed_color(435+2*itemXIncrease,855,"Item II",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 3){draw_text_transformed_color(435+3*itemXIncrease,855,"Item III",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 4){draw_text_transformed_color(435+4*itemXIncrease,855,"Item IV",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 5){draw_text_transformed_color(435+5*itemXIncrease,855,"Item V",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	if(global.maxItemSlots >= 6){draw_text_transformed_color(435+6*itemXIncrease,855,"Item VI",0.3,0.3,0,global.orange,global.orange,c_yellow,c_yellow,1);}
	
	var startY = 340;
	var yIncreasse = 30;
	var textSize = 0.25;
	var infoTextX = 300 + shoveInX;
	var hpCalc = int64(100 + bonusHealth + previewHealth);
	var hpText = "Health: " + string(hpCalc);
	var spdText = "Speed: " + string(20 + bonusSpeed + previewSpeed);
	var dlText = "Dash/Tp Bonus: " + string(0 + bonusDash + previewDash) + "%";
	var dmgCalc = int64(10 + bonusDamage + previewDamage);
	var dmgText = "Damage: " + string(dmgCalc);
	var frText = "Attack Speed: " + string(100 + bonusFirerate + previewFirerate) + "%";
	var lsText = "LifeSteal: " + string(75 + bonusLifeSteal + previewLifeSteal) + "%";//base is 75% for all damage
	var conjureCalc = 1 + (bonusConjur + previewConjur)/100;
	var cjText = "Conjuration Power: " + string((conjureCalc-1)*100) + "%";
	var cdCalc = (bonusCooldown + previewCooldown)/100;
	var cdText = "Cooldown reduction: " + string(cdCalc*100) + "%";
	if (global.ShowInfo == true)
	{
		shoveInX = 0;
		itemTextSize = 0.075;
		itemTextSeparationY = 22;
		draw_text_transformed_color(30,330,"Stats",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_text_transformed_color(30,startY+1*yIncreasse,"Defensive & Mobility",textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
		draw_text_transformed_color(30,startY+2*yIncreasse,hpText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
		draw_text_transformed_color(30,startY+3*yIncreasse,spdText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
		draw_text_transformed_color(30,startY+4*yIncreasse,dlText,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
		draw_text_transformed_color(30,startY+5*yIncreasse+10,"Damage & Sustain",textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
		draw_text_transformed_color(30,startY+6*yIncreasse+10,dmgText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
		draw_text_transformed_color(30,startY+7*yIncreasse+10,frText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
		draw_text_transformed_color(30,startY+8*yIncreasse+10,lsText,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
		draw_text_transformed_color(30,startY+9*yIncreasse+20,"Magic & Misc",textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);	
		draw_text_transformed_color(30,startY+10*yIncreasse+20,cjText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);		
		draw_text_transformed_color(30,startY+11*yIncreasse+20,cdText,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	}
	if (global.ShowInfo == false)
	{
		shoveInX = -270;
		itemTextSize = 0.1;
		itemTextSeparationY = 25;
	}
	#region Item descriptions
	draw_set_font(fnt_NewNormalText);
	if (itemShowInfoFor == Boss.NoBoss)
	{
		infoTextX = 300 + shoveInX;
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Select an [Item] to the left by",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"clicking on it.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"Hover over an [Item] to see info",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"about that [Item].",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_set_font(fnt_menu_fill);
		//draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
		draw_set_font(fnt_menu_fill);
		var ItemName = "Item Info: " + "No item selected"
		draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1)
	}
	
		#region Blood Zombie
		if (itemShowInfoFor == Boss.BloodZombie)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Using your ultimate[E] spawns an",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"area that increases your speed and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"damages enemies that stand in the",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"area.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Area Damage]: " + string(dmgCalc) + "/second";
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			var bztext2 = "[Speed Increase]: " +  string(50) + "%";
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,bztext2,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 30 Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 2 Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Zombie Head"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Flame Wisp
		if (itemShowInfoFor == Boss.FlameWisp)
		{
			var fText = "Flamie apears every [" + string(int64(clamp(24*(2-conjureCalc),1,24))) + "] seconds."
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,fText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"Walk to Flamie within a second",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"and Flamie will shoot a giant flame",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"ball at your enemies. After a",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"second Flamie will disapear again.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var fText2 = "[Projectile Damage]: " + string(dmgCalc*5)
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 2 Damage",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 45% Conjuration Bonus",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			if (global.ShowInfo == true)
			{
				draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"[Note] Spawn time scales with",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
				draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"Conjuration Bonus.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			}
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Flamie"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion	
		#region Corrupter
		if (itemShowInfoFor == Boss.TheCorrupter)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Standing still for 2.5 seconds",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"shoot a corruption beam that",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"deals massive damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Beam Damage]: " + string(dmgCalc*6*3);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+5.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"+ 10% Cooldown reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 1 Damage",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"\" A horrible chill goes down",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"your spine...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			if(global.ShowInfo == false){var ItemName = "Item Info: " + "Edge of Corruption";draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);}
			if(global.ShowInfo == true){var ItemName = "Item Info: " + "EoC";draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);}
		}
		#endregion
		#region DemonGate
		if (itemShowInfoFor == Boss.FlameGate)
		{
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Dashing causes a demon claw to burst",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"from the ground. When erupting",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"it deals massive damage to enemies.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"The demon claw blocks all projectiles.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var dhText = "It lasts for [" + string(hpCalc/50) + "] seconds." 
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,dhText,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			var fText2 = "[Claw Damage]: " + string(dmgCalc*10)
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,fText2,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 10 Health",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 20% Dash/Teleport Length",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			if (global.ShowInfo == true)
			{
				draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"[Note] the time the claw stays up ",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
				draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"scales with your [Max Health].",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			}			
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Demon Horn"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Wisp sister julia
		if (itemShowInfoFor == Boss.WispSisterJulia)
		{
			draw_set_font(fnt_NewNormalText);
			var soldierAmount = "Summon [" + string(int64(2*conjureCalc)) +"] futuristic soldiers."
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,soldierAmount,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"They shoot where you aim.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"Every time you use your [Ultimate],",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"[Right-Click] or [Dash] they",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"shoot faster.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var bztext = "[Projectile Damage]: " + string(dmgCalc*0.25);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,bztext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 30% Conjuration Bonus",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 7.5% Cooldown reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"I know we are losing...",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"...I want to know if we lost.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			if(global.ShowInfo == true){var ItemName = "Item Info: " + "FS";}
			if(global.ShowInfo == false){var ItemName = "Item Info: " + "Futuristic Soldier";}
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Death Knight
		if (itemShowInfoFor == Boss.DeathKnight)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Left-Click] ability is replaced",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"with the Death Scythe.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"It spins around you and deals damage",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"to enemies hit.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"It always has a attack speed of 1 ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"attack every 3 seconds. All extra",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"firetate is converted to % damage.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+8.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 5% LifeSteal",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Death Scythe";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Angel Slayer
		if (itemShowInfoFor == Boss.AngelSlayerRekZul)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"2 Portals will apear in the arena.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"You, your oppenent or any",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"projectiles can travel between",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var portalCd = "these 2 portals once every [" + string(clamp(7*(1-cdCalc),2,7)) + "]";
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,portalCd,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"seconds. After teleporting you",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"gain a 10% movement speed increase",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"for 3 seconds.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+8.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 3 Speed",itemTextSize,itemTextSize,0,c_lime,c_lime,c_green,c_green,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"+ 5% Cooldown Reduction",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			if (global.ShowInfo == true)
			{
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY,"[Note] The portals coooldown scales ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"with cooldown reduction.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+15*itemTextSeparationY,"#Note Minimum cooldown is 2 seconds",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			}
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"hmmm huuu huhhuuu?\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Nether Portal";
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Knight Witch Yi
		if (itemShowInfoFor == Boss.KnightWitchYi)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Using your [Right-Click] ability",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var witchAmountT = "summons [" + string(int64(1*conjureCalc)) + "] witches that last for";
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,witchAmountT,itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"3 seconds. They shoot a projectile",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"twoards your mouse cursor when ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"you use your [Left-Click] ability.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			var cbtext = "[Projectile Damage]: " + string(dmgCalc);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,cbtext,itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+7.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"+ 15% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"+ 30% Conjuration Bonus",itemTextSize,itemTextSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"\"Doubt is the greatest enemy.\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+13*itemTextSeparationY," ",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+14*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
		
			//name
			draw_set_font(fnt_menu_fill);
			var ItemName = "Item Info: " + "Death Cap"
			draw_text_transformed_color(infoTextX,330,ItemName,0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
		}
		#endregion
		#region Amgel Knight Oscar
		if (itemShowInfoFor == Boss.AngelKnightOscar)
		{
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+1*itemTextSeparationY,"Your [Dash],[Right-Click] and",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+2*itemTextSeparationY,"[Ultimate] abilities have 50%",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+3*itemTextSeparationY,"reduced cooldowns. However your",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+4*itemTextSeparationY,"damage is reduced by 65%.",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+5*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+6*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_set_font(fnt_menu_fill);
			draw_text_transformed_color(infoTextX,350+5.6*itemTextSeparationY,"Item Stats",itemTextSize*4,itemTextSize*4,0,global.orange,global.orange,c_yellow,c_yellow,1);
			draw_set_font(fnt_NewNormalText);
			draw_text_transformed_color(infoTextX,350+7*itemTextSeparationY,"+ 15% Attack Speed",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+8*itemTextSeparationY,"+ 2 Damage",itemTextSize,itemTextSize,0,c_red,c_red,c_maroon,c_maroon,1);
			draw_text_transformed_color(infoTextX,350+9*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+10*itemTextSeparationY,"\"Perfectly balanced as all",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+11*itemTextSeparationY,"things should be...\"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			draw_text_transformed_color(infoTextX,350+12*itemTextSeparationY,"",itemTextSize,itemTextSize,0,c_white,c_white,c_white,c_white,1);
			
			
		
			//name
			draw_set_font(fnt_menu_fill);
			if(global.ShowInfo == true){var ItemName = "Item Info: " + "URFH";}
			if(global.ShowInfo == false){var ItemName = "Item Info: " + "Ultra Rapid Fire Hourglass";}
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
	draw_text_transformed_color(30,30,"Select Fighter",1.5,1.5,0,global.orange,global.orange,c_yellow,c_yellow,1);


	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
}
if (menu == Menues.BossSelect)
{
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(30,30,"Select Fight",1.5,1.5,0,global.orange,global.orange,c_yellow,c_yellow,1);
	

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(50,760,"Back",backSize,backSize,0,backColor,backColor,backColor,backColor,1);
	
	if (queFight == true)
	{
		if (fightTransitionAlpha < 1){fightTransitionAlpha += clamp(0.3/30,0,1)}
		draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,fightTransitionAlpha);
		if (fightTransitionAlpha == 1){room_goto(rm_arena);	menu = Menues.Play; transitionAlpha = 1;queFight = false;}
	}
}
if (menu == Menues.Play)
{
	if (transitionAlpha > 0){transitionAlpha -= clamp(0.3/30,0,1)}
	draw_set_font(fnt_menu_fill);
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,transitionAlpha);
	if (fightAlpha > 0 && transitionAlpha < 0.75){fightAlpha -= clamp(0.2/30,0,1)}
	draw_set_halign(fa_center);
	var cX = display_get_gui_width()/2;//center x
	var cY = display_get_gui_height()/2-225;
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
	if (transitionAlpha == 0 && instance_exists(obj_allBoss) && instance_exists(global.player) && instance_exists(obj_camera))
	{
		obj_allBoss.state = BossStates.Fighting;
		global.player.state = States.Idle;
		obj_camera.state = CameraStates.PlayerView;
	}
	
}
if (menu == Menues.BossSlain)
{
	draw_set_halign(fa_center);
	var cX = display_get_gui_width()/2;//center x
	var cY = display_get_gui_height()/2-350;
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
if (menu == Menues.Death)
{
	deathAlpha += clamp(0.5/30,0,1);
	draw_sprite_ext(spr_blackGround,0,0,0,1,1,0,c_white,deathAlpha);
	
	draw_set_halign(fa_center);
	var cX = display_get_gui_width()/2;//center x
	var cY = display_get_gui_height()/2-350;
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
		queLeave = false;
		room_goto(rm_menu);
		menu = Menues.Main;
	}
}
//showInfo
if (global.ShowInfo == true && menu == Menues.Play)
{
	var playerHealth = "[Current/Max Health]: [" + string(obj_allPlayer.hp) + "] | ["  + string(obj_allPlayer.maxHp) +"]";
	var playerDmg = "[Damage]: [" + string(global.damage) + "]";
	var playerFireRate = "[Attack Speed]: [" + string(obj_allPlayer.leftClickCooldown/30) + "]";
	var playerSpeed = "[Base|Current Speed]: [" + string(obj_allPlayer.moveSpeed) + "] | ["  + string(obj_allPlayer.actualSpeed) +"]";
	var playerDashPower = "[Dash/Tp Power]: [" + string(bonusDash) + "]";
	var playerLifesteal = "[LifeSteal]: [" + string(global.lifeSteal) + "%]";//base is 75% for all damage
	var playerAura = "[Aura Power]: [" + string(int64(obj_allPlayer.auraPower*100)) + "%]";
	var playerConjuration = "[Conjuration Power]: [" + string(obj_allPlayer.conjurationPower*100) + "%]";
	var playerCDRightClick = "[Right-Click Cooldown]: [" + string(obj_allPlayer.rightClickCooldown/30)+ "]";
	var playerCDDash = "[Dash Cooldown]: [" + string(obj_allPlayer.dashCooldown/30)+ "]";
	var playerCDUlt = "[Ultimate Cooldown]: [" + string(obj_allPlayer.ultCooldown/30)+ "]";
	
	var yIncreasse = 20;
	var textSize = 0.075;
	var xStart = 15;
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(xStart,100+1*yIncreasse,"Defensive & Mobility",textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,100+2*yIncreasse,playerHealth,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,100+3*yIncreasse,playerSpeed,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,100+4*yIncreasse,playerDashPower,textSize,textSize,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(xStart,100+5*yIncreasse+10,"Damage & Sustain",textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,100+6*yIncreasse+10,playerDmg,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,100+7*yIncreasse+10,playerFireRate,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);	
	draw_text_transformed_color(xStart,100+8*yIncreasse+10,playerLifesteal,textSize,textSize,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(xStart,100+9*yIncreasse+20,"Magic & Misc",textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);	
	draw_text_transformed_color(xStart,100+10*yIncreasse+20,playerAura,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);	
	draw_text_transformed_color(xStart,100+11*yIncreasse+20,playerCDRightClick,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);		
	draw_text_transformed_color(xStart,100+12*yIncreasse+20,playerCDDash,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	draw_text_transformed_color(xStart,100+13*yIncreasse+20,playerCDUlt,textSize,textSize,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
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
	draw_text_transformed_color(200,900-25,menu,0.2,0.2,0,c_white,c_white,c_white,c_white,1);
}
//cursor
if (room == rm_menu || menu == Menues.Death)
{
	draw_sprite_ext(spr_cursorMenu,0,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),3,3,0,global.goldColor,1,);
}

