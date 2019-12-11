/// @description Insert description here
// You can write your code in this editor
draw_text_transformed_color(75,215,"Info:",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(105,415,"Abilites",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(340,255,"Stats",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
#region The Red Warrior
if (playerShowInfoFor == Character.TheRedWarrior)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Red Warrior",0.38,0.38,0,c_gray,c_gray,c_red,c_red,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Pyromancer
if (playerShowInfoFor == Character.Pyromancer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Each ability summons a flame",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"portal that shoots where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Left-Click]: Shoot a fireball. Hold to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"charge for up to 3 seconds. Charging the ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"fireball increases size and damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Right-Click]: Shoot waves of fireballs",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"in a cone. Cone amoumt increases with",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Space]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ult/E]: Become a giant meteor that falls",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"from the sky. Deal massive damage and ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"leave a fiery ground that deals damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"for 10 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Pyromancer Nina",0.38,0.38,0,global.orange,global.orange,c_orange,c_orange,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: Medium",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: High",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Shadow Assassin
if (playerShowInfoFor == Character.ShadowAssassin)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: All abilities allow you to use",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"your [Left-Click] ability again.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Left-Click]: Click inside the purple circle",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"to teleport and throw knives around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*8,"[Right-Click]: Summon a Shadow, it also",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"throws knives when you use [Left-Click].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Space]: Dash and make the circle around",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"you deal damage for 4 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ult/E]: Fully heal yourself and reset all",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"your ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Shadow Assassin Rhy",0.38,0.38,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Medium",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Low",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}
#endregion
#region The Shopkeeper
if (playerShowInfoFor == Character.Shopkeeper)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Shopkeeper",0.38,0.38,0,global.goldColor,global.goldColor,c_yellow,c_yellow,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Bloodknight
if (playerShowInfoFor == Character.BloodKnight)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Your blood armor doubles",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"your health and health upgrades.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Left-Click]: Summon bats that kill your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"[Right-Click]: Dash and deal damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"enemies in your way.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Space]: Dash and summon bats in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ult/E]: Shoot an ultra super duper",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"massive blood beam!",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Bloodknight David",0.38,0.38,0,c_red,c_red,c_maroon,c_maroon,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Medium",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Rainbow Slime
if (playerShowInfoFor == Character.RainbowSlime)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Rainbow Slime",0.38,0.38,0,c_silver,c_silver,c_white,c_white,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Plaugewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Plaugewalker",0.38,0.38,0,c_lime,c_lime,c_green,c_green,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Agent of God
if (playerShowInfoFor == Character.AgentOfGod)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Agent of God",0.38,0.38,0,c_aqua,c_aqua,c_silver,c_silver,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Graveling
if (playerShowInfoFor == Character.Graveling)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Graveling",0.38,0.38,0,c_gray,c_gray,c_dkgray,c_black,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Angel Slayer
if (playerShowInfoFor == Character.AngelSlayer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "Locked for Alpha Build",0.075,0.075,0,c_dkgray,c_dkgray,c_black,c_black,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Angel Slayer",0.38,0.38,0,c_red,c_red,c_black,c_black,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: ",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: ",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: ",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: ",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion


