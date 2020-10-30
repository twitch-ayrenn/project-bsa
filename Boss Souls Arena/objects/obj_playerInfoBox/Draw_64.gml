/// @description Insert description here
// You can write your code in this editor
//draw_text_transformed_color(75,215,"Info:",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
//draw_text_transformed_color(105,415,"Abilites",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
//draw_text_transformed_color(340,255,"Stats",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_line_width_color(65,260,570,260,5,c_yellow,c_yellow);
draw_rectangle_color(65,257,570,262,global.orange,global.orange,c_yellow,c_yellow,false);
var sep = 18.3;
var startY = 270;
var startX = 65;
#region The Pyromancer
if (playerShowInfoFor == Character.Pyromancer)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Flamie The Pyromancer",0.45,0.45,0,global.orange,global.orange,c_orange,c_orange,1);
	draw_line_width_color(65,260,570,260,5,c_yellow,c_yellow);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Flamie, a cocky pyro here to test her skills.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"Wants to prove her skills. Mages are all the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"same. She prove my ass - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Each [Ability] and [Attack] summons a flame ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"portal that shoots firebolts where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"Portals grow stronger with [Summoning Power].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Shoot a fireball. Hold to charge a stronger",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"fireball thats bigger and deals more damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"Attack Speed reduces charge time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Breathe waves of fireballs. Wave amoumt",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"increases with the damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*21-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*22,"Become a big meteor that falls from the sky.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*23,"Deal damage to enemies hit by the meteor or",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"the fiery ground it leaves.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Shadow Assasiin
if (playerShowInfoFor == Character.ShadowAssassin)
{	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,202,"Assy The Shadow Assassin",0.45,0.45,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"I would assume an assassin would  be smart",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"and not enter my arena. Imagine thinking you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"stand a chance against me - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);

	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"You can use your [Attack] instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"an [Ability] or your [Ultimate].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*8-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*9,"Click inside a purple circle to teleport and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"throw knives around you. You do not take ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"damage when touching an enemy. Max damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"is dealt when clicking on an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Summon a shadow of yourself, it also throws",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"knives when you use [Attack] and has a purple",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17,"circle that you can teleport to.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Dash, make the purple circles deal damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*22-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*23,"Restore all your health and reset all your ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"[Attack] and [ability] cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Blood Knight
if (playerShowInfoFor == Character.BloodKnight)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Reeia The Bloodknight Vampire",0.4,0.4,0,c_red,c_red,c_maroon,c_maroon,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Another survivor of the fallen blood army.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"Will be interesting to see if she can beat her",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"own general - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Double base health and health from items.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*7-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*8,"Summon bats that deal damage.  ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*9,"[Summoning Power] increases bats summoned.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Charge and deal damage to enemies in your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"way. You do not take damage when touching",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"an  enemy. This [Ability] counts as a dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Dash, summon a giant bat. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"also increases the damage the bat deals.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*22,"Shoot an uncontrollable blood beam towards",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*23,"mouse direction. It deals massive damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Plaguewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Plaegi The Plaguewalker",0.45,0.45,0,c_lime,c_lime,c_green,c_green,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Flamie, a cocky pyro here to test her skills.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"Wants to prove her skills. Mages are all the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"same. She prove my ass - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"The disease around you deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"enemies and heals your summonings. Some",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"summonings will lose health over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Summon a leech that deals damage to enemies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"over time or heals your non permanent",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"summonings over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Summon plaguelings. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"increases the plaguelings summoned. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Dash, summon a Wisp that deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"enemies in its circle and increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*22-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*23,"Summons a big zombie. The summon plaguelings",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"over time. [Summoning Power] Increases the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Agent Of God
if (playerShowInfoFor == Character.AgentOfGod)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Isaac The Agent of God",0.45,0.45,0,c_aqua,c_aqua,c_silver,c_silver,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Flamie, a cocky pyro here to test her skills.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"Wants to prove her skills. Mages are all the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"same. She prove my ass - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"A holy beam from above follows your mouse",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"cursor and deals damage to enemies. Dealing",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"damage to an enemy increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Shoot a big holy fireball.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13,"Teleport yourself to cursor and place a holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"ground which deals damage to your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Dash a long distance and fire a massive holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"fireball towards the direction of your dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Breathe holy fire towards mouse cursor for 5 ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Graveling
if (playerShowInfoFor == Character.Graveling)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Deady The Graveling",0.45,0.45,0,c_gray,c_gray,c_dkgray,c_dkgray,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"Flamie, a cocky pyro here to test her skills.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"Wants to prove her skills. Mages are all the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"same. She prove my ass - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Gain speed with every [Attack] and [Ability].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"Speed increases the power of your [Attack] &",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"[Abilities]. The range of your [Attack] &",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08,"[Ultimate] is shown by the circle around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*10-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*11,"Shot a burst of  firebolts in a cone. The",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"amount of firebolts is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Heal yourself. The heal is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*17-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*18,"Place an area that damages enemies and boosts",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*19,"your speed when standing inside the area.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*21-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*22,"Dash and deal massive damage to enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*23,"More movement speed equals more damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Angel Slayer
if (playerShowInfoFor == Character.AngelSlayer)
{
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(70,202,"Killie The Angel Slayer",0.45,0.45,0,c_red,c_red,c_black,c_black,1);
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*00,"A very strong and powerful demon. Perhaps",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"a bit ambitious for the lad thinkis he can beat",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"me, it will be his doom - The Arena King.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"You can use your [Attack] instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"an [Ability] & you cant have more than 100 HP.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*8-5,"Attack - Left Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*9,"Dash forward then Slash in with you scythe.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability 1 - Right Click",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Dash Back and summon a massive demon.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"[Summoning Power] increases the damage dealt.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15-5,"Ability 2 - Space",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Ultimate - R",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Gain 50% movement speed and [Attack]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"constantly for 6 seconds. During this time you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"cant use any [Ability].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion



