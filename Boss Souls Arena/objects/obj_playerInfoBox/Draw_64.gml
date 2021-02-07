//draw_line_width_color(65,260,570,260,4,c_yellow,c_yellow);
draw_rectangle_color(65,250,570,255,global.orange,global.orange,c_yellow,c_yellow,false);
var sep = 18.3;
var startY = 270;
var startX = 65;
#region Camapaign Info
if (playerShowInfoFor == Character.NoCharacterCampaign)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Campaign Info",0.45,0.45,0,global.orange,global.orange,c_yellow,c_yellow,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Fight an opponent for glory and loot. After",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"defeating an opponent more opponents and  ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"item slots will be unlocked.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);	
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05-5,"Unlocking More Fighters",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06,"From the start only 3 fighter are available.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"To unlock all fighters you have to defeat the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08,"final boss, the Arena King once.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Fool! You wont succeed, you wont even come",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"close to me, but if you want to make it far",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"enough to where you get to fight me then you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15,"have to be as aggresive and relentless as",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"your opponents - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
}
#endregion
#region Arena Rush Info
if (playerShowInfoFor == Character.NoCharacterArenaRush)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Arena Rush Info",0.45,0.45,0,global.orange,global.orange,c_yellow,c_yellow,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"A true challange for those who have mastered",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"the campaign and the fighters. Fight opponent",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"after opponent and evetually the Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"Himself in one go. To reach the king you have",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*04,"to defeat 14 other bosses in a row.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);	

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*07-5,"Unlocking The Last Item",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*08,"Unlock a new item by beating the Arena Rush",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*09,"atleast once.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13,"To succeed make sure to pick a combination of ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"items that are strong in most scenarios as well",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15,"as the must have items for certain opponents.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Pyromancer
if (playerShowInfoFor == Character.Pyromancer)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Flamie The Pyromancer",0.45,0.45,0,global.orange,global.orange,c_orange,c_orange,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Each ability and attack summons a flame",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"portal that shoots firebolts where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"Portals grow stronger with [Summoning Power].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*6.5,"Shoot a fireball. Hold to charge a stronger",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*7.5,"fireball thats bigger and deals more damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*8.5,"Attack Speed reduces charge time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Breathe waves of fireballs. Wave amoumt",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"increases with the damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16.5,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Become a big meteor that falls from the sky.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"Deal damage to enemies hit by the meteor or",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"the fiery ground it leaves.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Shadow Assasiin
if (playerShowInfoFor == Character.ShadowAssassin)
{	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,202,"Shady The Shadow Assassin",0.45,0.45,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"You can use your attack instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"an ability.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05.5,"Click inside the purple circle to teleport and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06.5,"throw knives around you. You do not take ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07.5,"damage when touching an enemy. Max damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"is dealt when clicking on an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Summon a shadow of yourself, it also throws",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"knives when you attack and also has a purple",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"circle that you can teleport to.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17.5,"Dash, make the purple circles deal damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Restore all your health and reset all your ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"attack and ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Blood Knight
if (playerShowInfoFor == Character.BloodKnight)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Reeia The Bloodknight Vampire",0.4,0.4,0,c_red,c_red,c_maroon,c_maroon,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Double [Base Health] and [Health] from items.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*3.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*4.5,"Summon bats. [Summoning Power] increases",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*5.5,"the amount of bats summoned.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*08-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*09,"Charge and deal damage to enemies in your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"way. You do not take damage when touching",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"an enemy. This ability counts as a dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*13.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*14.5,"Dash, summon a giant bat. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15.5,"increases the damage the bat deals.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Shoot an uncontrollable blood beam towards",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"mouse direction. It deals massive damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Plaguewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Plaegi The Plaguewalker",0.45,0.45,0,c_lime,c_lime,c_green,c_green,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"The disease around you deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"enemies and heals your summonings. Some",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"summonings will lose health over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06.5,"Summon a leech that deals damage to enemies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07.5,"over time or heals your non permanent",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"summonings over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Summon plaguelings. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"increases the amount of plaguelings summoned. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16.5,"Dash, summon a Wisp that deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17.5,"enemies in its circle and increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Summons a big zombie. The zombie plaguelings",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Agent Of God
if (playerShowInfoFor == Character.AgentOfGod)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Isaac The Agent of God",0.45,0.45,0,c_aqua,c_aqua,c_silver,c_silver,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"A holy beam from above follows your mouse",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"cursor and deals damage to enemies. Dealing",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"damage to an enemy increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*05.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*06.5,"Shoot a big holy fireball.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*09-5,"Ability - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Teleport yourself to cursor and place a holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"ground which deals damage to your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*13.5-5,"Dash - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*14.5,"Dash a long distance and fire a massive holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*15.5,"fireball towards the direction of your dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Breathe holy fire towards mouse cursor for 5 ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Graveling
if (playerShowInfoFor == Character.Graveling)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Deady The Graveling",0.45,0.45,0,c_gray,c_gray,c_dkgray,c_dkgray,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"Gain speed with every attack and ability.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"Speed increases the power of your attack &",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*03,"abilities. The range of your attack & ultimate",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*04,"is shown by the circle around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*06.5-5,"Attack - Left Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*07.5,"Shot a burst of  firebolts in a cone. The",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08.5,"amount of firebolts is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability 1 - Right Click:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Heal yourself. The heal is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14.5-5,"Ability 2 - Space:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15.5,"Place an area that damages enemies and boosts",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16.5,"your speed when standing inside the area.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Dash and deal massive damage to enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"More movement speed equals more damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Angel Slayer
if (playerShowInfoFor == Character.AngelSlayer)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Killie The Angel Slayer",0.45,0.45,0,c_red,c_red,c_black,c_black,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*00-5,"Passive: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*01,"You can use your attack instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"an ability & you cant have more than 100 HP.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04.5-5,"Attack - Left Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05.5,"Dash forward then Slash in with you scythe.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*08-5,"Ability - Right Click: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*09,"Dash Back and summon a massive demon.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"[Summoning Power] increases the damage dealt.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12.5-5,"Dash - Space: ",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13.5,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Ultimate - R:",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Gain 50% movement speed and attack",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"constantly for 6 seconds. During this time you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*19,"cant use any ability.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion