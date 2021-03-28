//draw_line_width_color(65,260,570,260,4,c_yellow,c_yellow);
draw_line_width_color(225,250-3,225,250+3,425,global.orange,c_yellow);
var sep = 18.3;
var startY = 270+27.5;
var startX = 10;
var barStartX = startX;
var barLengthValue = 430;
var barLength = barStartX+barLengthValue;
var barStartY = startY+445;
var barThickness = 25;
var textSize = 0.061;
var color1,color2,title;
title = "";
color1 = global.orange;
color2 = c_yellow;
#region Camapaign Info
if (playerShowInfoFor == Character.NoCharacterCampaign)
{
	title = "Campaign Info";
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Fight an opponent for glory and loot. After",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"defeating an opponent more opponents and  ",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"item slots will be unlocked.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);	
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05-5,"Unlocking More Fighters",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06,"From the start only 3 fighter are available.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"To unlock all fighters you have to defeat the",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08,"final boss, the Arena King once.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Fool! You wont succeed, you wont even come",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"close to me, but if you want to make it far",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"enough to where you get to fight me then you",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15,"have to be as aggresive and relentless as",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"your opponents - The Arena King",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	var progression = ((((gameMaster.pyromancerProgress-1)/1.5)/18)+(((gameMaster.assassinProgress-1)/1.5)/18)+(((gameMaster.bloodKnightProgress-1)/1.5)/18)+(((gameMaster.angelSlayerProgress-1)/1.5)/18)+(((gameMaster.agentOfGodProgress-1)/1.5)/18)+(((gameMaster.gravelingProgress-1)/1.5)/18)+(((gameMaster.plaugeWalkerProgress-1)/1.5)/18))/7;
	
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Game Completion: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region Arena Rush Info
if (playerShowInfoFor == Character.NoCharacterArenaRush)
{
	title = "Arena Rush Info";
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"A true challange for those who have mastered",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"the campaign and the fighters. Fight opponent",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"after opponent and evetually the Arena King",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"Himself in one go. To reach the king you have",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*04,"to defeat 14 other bosses in a row.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);	

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*07-5,"Unlocking The Last Item",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*08,"Unlock a new item by beating the Arena Rush",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*09,"atleast once.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13,"To succeed make sure to pick a combination of ",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"items that are strong in most scenarios as well",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15,"as the must have items for certain opponents.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Pyromancer
if (playerShowInfoFor == Character.Pyromancer)
{
	title = "Flamie The Pyromancer";
	color1 = global.orange;
	color2 = c_orange;
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Each ability and attack summons a flame",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"portal that shoots firebolts where you aim.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"Portals grow stronger with [Summoning Power].",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*6.5,"Shoot a fireball. Hold to charge a stronger",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*7.5,"fireball thats bigger and deals more damage.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*8.5,"Attack Speed reduces charge time.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Breathe waves of fireballs. Wave amoumt",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"increases with the damage stat.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16.5,"Dash a long distance.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Become a big meteor that falls from the sky.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"Deal damage to enemies hit by the meteor or",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"the fiery ground it leaves.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	var progression = (((gameMaster.pyromancerProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Shadow Assasiin
if (playerShowInfoFor == Character.ShadowAssassin)
{	
	title = "Shady The Shadow Assassin";
	color1 = c_fuchsia;
	color2 = c_purple;
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"You can attack instantly after using other",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"abilities. Your sorounded with a shadow circle.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05.5,"Click inside the shadow circle to teleport and",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06.5,"throw knives around you. You do not take ",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07.5,"damage when touching an enemy. Max damage",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"is dealt when clicking on an enemy.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Summon a shadow of yourself, it also throws",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"knives when you attack and also has a shadow",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"circle.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17.5,"Dash, make the purple circles deal damage.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Restore all your health and reset all your ",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"attack and ability cooldowns.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	var progression = (((gameMaster.assassinProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Blood Knight
if (playerShowInfoFor == Character.BloodKnight)
{
	title = "Reeie The Vampire Knight";
	color1 = c_red;
	color2 = c_maroon;

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"50% Bonus [Base Health] and [Health] from items.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*3.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*4.5,"Summon bats. [Summoning Power] increases",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*5.5,"the amount of bats summoned.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*08-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*09,"Charge and deal damage to enemies in your",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"way. You do not take damage when touching",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"an enemy. This ability counts as a dash.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*13.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*14.5,"Dash, summon a giant bat. [Summoning Power]",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15.5,"increases the damage the bat deals.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Shoot an uncontrollable blood beam towards",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"mouse direction. It deals massive damage.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	var progression = (((gameMaster.bloodKnightProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Plaguewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	title = "Plaegi The Plaguewalker";
	color1 = c_lime;
	color2 = c_green;
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"The disease around you deals damage to",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"enemies and heals your summonings. Some",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"summonings will lose health over time.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06.5,"Summon a leech that deals damage to enemies",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07.5,"over time or heals your non permanent",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"summonings over time.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Summon plaguelings. [Summoning Power]",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"increases the amount of plaguelings summoned. ",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16.5,"Dash, summon a Wisp that deals damage to",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17.5,"enemies in its circle and increases your speed.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Summons a big zombie. The zombie plaguelings",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"over time.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	var progression = (((gameMaster.plaugeWalkerProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Agent Of God
if (playerShowInfoFor == Character.AgentOfGod)
{
	title = "Isaac The Agent of God";
	color1 = c_aqua;
	color2 = c_silver;

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Every second a projectiles falls down at your",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"cursor dealing damage. Attack speed reduces",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"the cooldown of this power.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06.5,"Shoot a big holy fireball.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*09-5,"Ability - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Strike forward with the Godsword dealing",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"damage to enemies hit by the strike. Hiting an",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"enemy reduces the cooldown by 75%.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15.5,"Dash, fire a massive holy fireball towards",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16.5,"the direction of your dash.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Breathe holy fire towards mouse cursor for 5",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"seconds.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	var progression = (((gameMaster.agentOfGodProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Graveling
if (playerShowInfoFor == Character.Graveling)
{
	title = "Deady The Graveling";
	color1 = c_gray;
	color2 = c_dkgray;

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Gain speed with every attack and ability.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"Speed increases the power of your attack &",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"abilities. The range of your attack & ultimate",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*04,"is shown by the circle around you.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*06.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*07.5,"Shot a burst of  firebolts in a cone. The",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"amount of firebolts is increased by speed.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability 1 - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Heal yourself. The heal is increased by speed.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14.5-5,"Ability 2 - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15.5,"Dash, place an area which damages enemies",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16.5,"and increases your speed.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	//Dash, place an area which damages enemies and increases your speed.
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Dash and deal massive damage to enemies.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"More movement speed equals more damage.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	var progression = (((gameMaster.gravelingProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
#region The Angel Slayer
if (playerShowInfoFor == Character.AngelSlayer)
{
	title = "Killie The Angel Slayer";
	color1 = c_red;
	color2 = c_black;

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"You can use your attack instantly after using",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"an ability & you cant have more than 150 HP.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05.5,"Dash forward then Slash in with you scythe.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*08-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*09,"Dash Back and summon a massive demon.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"[Summoning Power] increases the damage dealt.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13.5,"Dash a long distance.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Gain 50% movement speed and attack",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"constantly for 6 seconds. During this time you",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*19,"cant use any abilities.",textSize,textSize,0,c_white,c_white,c_white,c_white,1);

	var progression = (((gameMaster.angelSlayerProgress-1)/1.5)/18);
	progression = clamp(progression,0,1);
	draw_set_alpha(0.85);
	draw_line_width_color(barStartX,barStartY+12.5,barStartX+progression*barLengthValue,barStartY+12.5,barThickness,global.orange,c_yellow);
	draw_set_alpha(1);
	draw_rectangle_color(barStartX,barStartY,barLength,barStartY+25,c_silver,c_silver,c_white,c_white,true);
	draw_rectangle_color(barStartX+0.5,barStartY+0.5,barLength-1,barStartY+barThickness-1,c_white,c_white,c_silver,c_silver,true);
	draw_set_font(fnt_NewNormalText);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_text_transformed_color(barLength/2+35,barStartY+17.5,"Character Progression: " + string(int64(progression*100)) +"%",textSize,textSize,0,c_white,c_white,c_white,c_white,1);
	draw_set_valign(fa_left);
	draw_set_halign(fa_top);
}
#endregion
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_menu_fill);
draw_text_transformed_color(225,280,title,0.35,0.35,0,color1,color1,color2,color2,1);
draw_set_halign(fa_left)
draw_set_valign(fa_top)