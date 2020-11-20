draw_line_width_color(65,260,570,260,4,c_yellow,c_yellow);
draw_rectangle_color(65,257,570,262,global.orange,global.orange,c_yellow,c_yellow,false);
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
	draw_text_transformed_color(startX,startY+sep*04-5,"Selecting a Fighter",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Hover over a fighter to get info about that",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"fighter. Click on a fighter to select it and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"move on to item select or boss select.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*09-5,"Unlocking More Fighters",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"From the start only 3 fighter are available.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"To unlock all fighters you have to defeat the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"Arena King once.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Fighter Progression",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Each fighter has its own progression and has to ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"go trough the arena. This means defeating a ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17,"boss on a fighter does not carry over to ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"other fighters. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Fool! You wont succeed, you wont even come",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"close to me, but if you want to make it far",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*23,"enough to where you get to fight me then you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"have to be as aggresive and relentless as",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*25,"your opponents - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
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
	draw_text_transformed_color(startX,startY+sep*06-5,"Selecting a Fighter",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*07,"Hover over a fighter to get info about that",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08,"fighter. Click on a fighter to select it and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*09,"move on to item select.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Unlocking More Fighters",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"To unlock a fighter for the Arena Rush you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"must first beat the main campaign with that",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"fighter.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Unlocking The Last Item",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Unlock a new item by beating the Arena Rush",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"atleast once.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"How To Succeed In The Arena",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"To succeed make sure to pick a combination of ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"items that are strong in most scenarios as well",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*23,"as the must have items for certain opponents.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion
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
	draw_text_transformed_color(startX,startY+sep*02,"same. She can prove my ass - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: Fiery Misery",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Each ability and attack summons a flame",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"portal that shoots firebolts where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"Portals grow stronger with [Summoning Power].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click: Charging Agony",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Shoot a fireball. Hold to charge a stronger",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"fireball thats bigger and deals more damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"Attack Speed reduces charge time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability - Right Click: Waves Of Torment",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Breathe waves of fireballs. Wave amoumt",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"increases with the damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Dash - Space: Grief Step",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*21-5,"Ultimate - R: Anguish",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: Inner Void",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"You can use your attack instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"an ability or your ultimate.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*8-5,"Attack - Left Click: From The Shadows",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*9,"Click inside the purple circle to teleport and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*10,"throw knives around you. You do not take ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"damage when touching an enemy. Max damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"is dealt when clicking on an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability - Right Click: Spread The Darkness",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Summon a shadow of yourself, it also throws",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"knives when you attack and also has a purple",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*17,"circle that you can teleport to.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*19-5,"Dash - Space: Swallowed By Void",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*20,"Dash, make the purple circles deal damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*22-5,"Ultimate - R: Replenish Darkness",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*23,"Restore all your health and reset all your ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"attack and ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
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
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: Indestructible Armor",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Double [Base Health] and [health] from items.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*7-5,"Attack - Left Click: Endless Blood",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*8,"Summon bats. [Summoning Power] increases",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*9,"the amount of bats summoned.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: Immortal Charge",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Charge and deal damage to enemies in your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"way. You do not take damage when touching",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"an enemy. This ability counts as a dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Dash - Space: Neverending Gore",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Dash, summon a giant bat. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"increases the damage the bat deals.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R: Mortal Reminder",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*21,"Shoot an uncontrollable blood beam towards",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*22,"mouse direction. It deals massive damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
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
	draw_text_transformed_color(startX,startY+sep*00,"Necromencers are always such lovely company.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"They always bring a party and the stench",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"is lovely - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: Wandering Plague",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"The disease around you deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"enemies and heals your summonings. Some",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"summonings will lose health over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click: Infection",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Summon a leech that deals damage to enemies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*11,"over time or heals your non permanent",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"summonings over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability - Right Click: Pandemic",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Summon plaguelings. [Summoning Power]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*16,"increases the amount of plaguelings summoned. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Dash - Space: Epidemic",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Dash, summon a Wisp that deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"enemies in its circle and increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*22-5,"Ultimate - R: Curse Of Life",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*23,"Summons a big zombie. The zombie plaguelings",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*24,"over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
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
	draw_text_transformed_color(startX,startY+sep*00,"This one must landed on his head when he fell",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"from heaven. To think she could liberate this",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"arena is madness - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: A Gift From Above",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"A holy beam from above follows your mouse",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"cursor and deals damage to enemies. Dealing",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"damage to an enemy increases your speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*9-5,"Attack - Left Click: Holy Bolt",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*10,"Shoot a big holy fireball.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*12-5,"Ability - Right Click: Plane Walker",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*13,"Teleport yourself to cursor and place a holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*14,"ground which deals damage to your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*16-5,"Dash - Space: Deity Blast",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*17,"Dash a long distance and fire a massive holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*18,"fireball towards the direction of your dash.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*20-5,"Ultimate - R: Meet Our Maker",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
	draw_text_transformed_color(startX,startY+sep*00,"A fast little shit, i bet my money this one",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*01,"will make it far but no one beats me. Imagine",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*02,"thinking they can beat me - The Arena King",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: A Quick Death",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"Gain speed with every attack and ability.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"Speed increases the power of your attack &",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*07,"abilities. The range of your attack & ultimate",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*08,"is shown by the circle around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*10-5,"Attack - Left Click: Execute",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*11,"Shot a burst of  firebolts in a cone. The",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*12,"amount of firebolts is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*14-5,"Ability 1 - Right Click: Harvest Death",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*15,"Heal yourself. The heal is increased by speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*17-5,"Ability 2 - Space: Sudden Death",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*18,"Place an area that damages enemies and boosts",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*19,"your speed when standing inside the area.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*21-5,"Ultimate - R: Extinction",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
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
	draw_text_transformed_color(startX,startY+sep*04-5,"Passive: Evil From Bellow",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*05,"You can use your attack instantly after using",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*06,"an ability & you cant have more than 100 HP.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*8-5,"Attack - Left Click: Harvest",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*9,"Dash forward then Slash in with you scythe.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*11-5,"Ability - Right Click: Hell Spawn",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*12,"Dash Back and summon a massive demon.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*13,"[Summoning Power] increases the damage dealt.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*15-5,"Dash - Space: Demonic Pressence",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*16,"Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(startX,startY+sep*18-5,"Ultimate - R: Satanic Harvest",0.27,0.27,0,global.orange,global.orange,c_yellow,c_yellow,1);
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(startX,startY+sep*19,"Gain 50% movement speed and attack",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*20,"constantly for 6 seconds. During this time you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(startX,startY+sep*21,"cant use any ability.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
}
#endregion