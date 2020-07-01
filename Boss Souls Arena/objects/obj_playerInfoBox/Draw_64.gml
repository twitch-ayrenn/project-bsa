/// @description Insert description here
// You can write your code in this editor
draw_text_transformed_color(75,215,"Info:",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(105,415,"Abilites",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
draw_text_transformed_color(340,255,"Stats",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
#region The Pyromancer
if (playerShowInfoFor == Character.Pyromancer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Each ability summons a flame portal",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"that shoots firebolts where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Shoot a fireball. Hold to charge a",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"stronger fireball thats bigger and deals more",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"damage. Attack Speed reduces charge time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Breathe waves of fireballs.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"Wave amoumt increases with damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"[Ultimate]: Become a big meteor that falls",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"from the sky. Deal damage to enemies hit by",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"the meteor or the fiery ground it leaves.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Flamie The Pyromancer",0.38,0.38,0,global.orange,global.orange,c_orange,c_orange,1);
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
	draw_text_transformed_color(65,450,		  "[Passive]: All [abilities] allow you to use your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"[Attack] again.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Click inside the purple circle to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"teleport and throw knives around you. You do ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"not take damage when touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Summon a Shadow of yourself, it",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*8,"also throws knives when you use [Attack].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Dash and make the circle around",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"you deal damage for 4 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ultimate]: Fully heal yourself and reset all",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"your ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,221,"Assy The Shadow Assassin",0.32,0.32,0,c_fuchsia,c_fuchsia,c_purple,c_purple,0.85);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Medium",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Low",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
}
#endregion
#region The Bloodknight
if (playerShowInfoFor == Character.BloodKnight)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Double Max Health.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"[Attack]: Summon bats that kill your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"[Ability][1]: Dash and deal damage to enemies",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"in your way. You do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"Ability][2]: Dash and summon a giant bat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ultimate]: Shoot an uncontrollable blood beam",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"towards a direction. It deals massive damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Reeia The Bloodknight",0.38,0.38,0,c_red,c_red,c_maroon,c_maroon,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Medium",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Plaugewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: The disease around you deals ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"damage and heals your summonings.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Summon a leech that deals damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4, "over time or heals your non permanent",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"summonings over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Summon plaugelings. They chase",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"your enemies and deal damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Dash and Summon a Wisp that deals",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"damage to enemies in its circle and increases",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"your movement speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ultimate]: Summons Zamii the big zombie. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"Zamii summons plaguelings.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Plaigi The Plaugewalker",0.35,0.35,0,c_lime,c_lime,c_green,c_green,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Very High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: Low",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Medium",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Agent of God
if (playerShowInfoFor == Character.AgentOfGod)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: A holy beam from above follows",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"your mouse movement and deals damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"enemies it burns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"[Attack]: Shoot a big holy bolt.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"[Ability][1]: Teleport and place a holy area",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"which burns your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"[Ability][2]: Dash a long distance and shoot a",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"big holy firebolt towards dash direction.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"[Ultimate]: Breathe holy fire over 5 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Tyra The Agent of God",0.35,0.35,0,c_aqua,c_aqua,c_silver,c_silver,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: High",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Graveling
if (playerShowInfoFor == Character.Graveling)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Gain speed with every attack and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"spell cast. Speed increases the power of your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"spells and attacks. The range of your [Attack]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"& [Ultimate] is shown by the circle around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"[Attack]: Shot a burst of shadow bolts.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Heal yourself.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Place an area that damages",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"enemies and increases your speed. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ultimate]: Dash and deal massive damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"enemies dash trough. You do not take damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"when touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Deady The Graveling",0.38,0.38,0,c_gray,c_gray,c_dkgray,c_black,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Medium",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: Medium",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Medium",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion
#region The Angel Slayer
if (playerShowInfoFor == Character.AngelSlayer)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive][1]: All abilities allow you to use your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"[Attack] again and you cant have more than ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"100 health points.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"[Attack]: Dash then Slash with you scythe.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"[Ability][1]: Dash Back and summon a charging",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"demon that deals damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"[Ability][2]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Ultimate]: Spin your scythe for 6 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"During this time you cant use the other",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"abilities but you gain a 50% speed boost.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"Killy The Angel Slayer",0.38,0.38,0,c_red,c_red,c_black,c_black,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Low",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion


