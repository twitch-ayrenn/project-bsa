/// @description Insert description here
// You can write your code in this editor
draw_text_transformed_color(75,215,"Info:",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(75,415,"Description",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(340,255,"Stats",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
//draw_sprite_ext(spr_icons,0,300,332,2,2,0,c_white,1);
//draw_sprite_ext(spr_icons,1,300,367,2,2,0,c_white,1);
//draw_sprite_ext(spr_icons,2,300,402,2,2,0,c_white,1);
if (playerShowInfoFor == Character.TheRedWarrior)
{
	
}
if (playerShowInfoFor == Character.Pyromancer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Each time you use an ability",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"shoot 9 firebolts in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"[Passive II]: Deal damage to all enemies ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"that enter the edge of the circle/aura.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"[Left-Click]: Shoot 9 firebolts randomly",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"in a cone.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[Right-Click]: Spawn a portal that copies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"all your spells, passive and auras.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Space]: Tripple circle/aura damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ult/R]: Shoot a fireball that grows in size",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"and power that splits in to smaller bolts",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"if its large enough",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Pyromancer Nina",0.38,0.38,0,global.orange,global.orange,c_orange,c_orange,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Health: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: Medium",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Class: Spellcaster",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}
if (playerShowInfoFor == Character.ShadowAssassin)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: All abilities allow you to use",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"your [Left-Click] ability again",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Left-Click]: Click inside the purple circle",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"to teleport and thorw knives around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*8,"[Right-Click]: Summon a Shadow, it also",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"throws knives when you use [Left-Click].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Space]: Dash and make the circle around",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"you deal damage for 4 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ult/R]: Fully heal yourself and reset all",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"your ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Shadow Assassin Rhy",0.38,0.38,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Health: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Class: Assassin",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}
if (playerShowInfoFor == Character.Shopkeeper)
{
	
}
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
	draw_text_transformed_color(65,450+17.5*13,"[Ult/R]: Shoot an ultra super duper",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"massive blood beam!",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Bloodknight David",0.38,0.38,0,c_red,c_red,c_maroon,c_maroon,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Health: High",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: Low",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Class: Shooter",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}