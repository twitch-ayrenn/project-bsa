/// @description Insert description here
// You can write your code in this editor
draw_text_transformed_color(75,215,"Info:",0.4,0.4,0,c_yellow,c_yellow,c_white,c_white,1);
draw_text_transformed_color(75,415,"Description",0.4,0.4,0,c_yellow,c_yellow,c_white,c_white,1);
draw_text_transformed_color(340,255,"Stats",0.4,0.4,0,c_yellow,c_yellow,c_white,c_white,1);
//draw_sprite_ext(spr_icons,0,300,332,2,2,0,c_white,1);
//draw_sprite_ext(spr_icons,1,300,367,2,2,0,c_white,1);
//draw_sprite_ext(spr_icons,2,300,402,2,2,0,c_white,1);
if (playerShowInfoFor == Character.TheRedWarrior)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(57,490," [Left click]: Throws a spining",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,515,"axe that deals continuous",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,540,"damage.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,570," [Left click | without axe]:",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,595,"Makes the axe travel faster.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,625," [Right click]: Makes the axe",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,650,"axe stand still at its position.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(62,660,"",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,680,"",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(165,215,"The Red Warrior",0.4,0.4,0,c_maroon,c_maroon,c_dkgray,c_dkgray,1);
	//stats
	draw_text_transformed_color(295,320-10,"Health: Medium",0.3,0.3,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-10+15,"Damage: Medium",0.3,0.3,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-10+30,"Mobility: Low",0.3,0.3,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-10+45,"Difficulty: High",0.3,0.3,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
if (playerShowInfoFor == Character.Pyromancer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Each time you use an ability",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"shoot 9 firebolts in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*2,"[Passive II]: Deal damage to all enemies ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*3,"that enter the edge of the circle/aura.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*5,"[Left-Click]: Shoot 9 firebolts randomly",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*6,"in a cone.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[Right-Click]: Spawn a portal that copies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"all your spells, passive and auras.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Dash/Space]: Tripple circle/aura damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ult/R]: Shoot a fireball that grows in size",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"and power that splits in to smaller bolts",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"if its large enough",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Pyromancer Nina",0.38,0.38,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
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
	draw_text_transformed_color(65,450,		  "[Passive]: Each time you use [Left-Click]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"your damage increasses by 1% up to 100%.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*3,"[Left-Click][Within circle]: Teleport to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*4,"cursor and throw 12 knives in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*5,"[Left-Click][Outside circle]: Shoot 6",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*6,"knives in a direction for 3 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[Right-Click]: Resets your [Left-Click]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"ability and throw 16 knives in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Dash/Space]: Resets your [Left-Click]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"ability and throw 10 knives in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ult/R]: Reset [Left-Click],[Right-Click]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"and throw 20 knives.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Shadow Assassin",0.38,0.38,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Health: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Class: Assassin",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}
if (playerShowInfoFor == Class.The_Shopkeeper)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(57,490," [Left click]: Shoots a money",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,515,"bag that returns to you and",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,540,"healing you.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,570," [Right click]: You become",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,595,"stationary for 5 seconds but",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,620,"doubles firerate.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,650," [Passive]: Has 2 [goons]",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,675,"following you to fight by",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(57,700,"your side.",0.1,0.1,0,c_white,c_white,c_white,c_white,1);
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(165,215,"The Shopkeeper",0.4,0.4,0,c_yellow,c_yellow,global.goldColor,global.goldColor,1);
	//stats
	draw_text_transformed_color(295,320-10,"Health: High",0.3,0.3,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-10+15,"Damage: Low",0.3,0.3,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-10+30,"Mobility: Low",0.3,0.3,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-10+45,"Difficulty: Low",0.3,0.3,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
if (playerShowInfoFor == Character.BloodKnight)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Your blood armor doubles",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"health and health upgrades.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*3,"[Left-Click]: Summon 1 bat then 2 bats",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*4,"then 3 bats and repeat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*6,"[Right-Click]: Switch type of bats",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,455+17.5*7,"to summon from [Left-Click].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[1]: Summon bats that travel furthur.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"[2]: Summon twice as many bats.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[3]: Summon bats that heal more.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"[Dash/Space]: Summon 12 bats in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ult/R]: Shoot the ultra blood beam!",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Bloodknight",0.38,0.38,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Health: High",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: Low",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Class: Shooter",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}