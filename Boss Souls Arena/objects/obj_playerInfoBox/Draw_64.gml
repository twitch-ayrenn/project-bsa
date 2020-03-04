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
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Shoot a fireball. Hold to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"charge for up to 2.5 seconds. Charging",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"the fireball increases size and damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Shoot waves of fireballs",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"in a cone. Cone amoumt increases with",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Ability][2]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ultimate]: Become a big meteor that falls",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"from the sky. Deal damage enemies hit.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"The meteor leaves a fiery ground.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
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
	draw_text_transformed_color(65,450,		  "[Passive]: All [abilities] allow you to ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"use your [Attack] again.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Click inside the purple circle",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"to teleport and throw knives around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*8,"[Ability][1]: Summon a Shadow, it also",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"throws knives when you use [Left-Click].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Ability][2]: Dash and make the circle ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"around you deal damage for 4 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ultimate]: Fully heal yourself and reset ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"all your ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
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
#region The Bloodknight
if (playerShowInfoFor == Character.BloodKnight)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: Your armor doubles max health.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"[Attack]: Summon bats that kill your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"[Ability][1]: Dash and deal damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"enemies in your way. You do not take",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"damage when touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"Ability][2]: Dash and summon 3 bats.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Ultimate]: Shoot an uncontrollable blood ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"beam towards a direction. It deals massive",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
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
#region The Plaugewalker
if (playerShowInfoFor == Character.PlaugeWalker)
{
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(65,450,		  "[Passive]: The disease around you deals",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"damage and heals your summonings.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"[Attack]: Summon a leech that deals ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4, "damage over time or heals your  ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"summonings over time.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"[Ability][1]: Summon 5 plaugelings that",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"chase your enemies and deal damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Dash and Summon a Wisp that",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"deals damage to enemies in its circle and",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"increases your movement speed.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"[Ultimate]: Summons zamii the big zombie.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"Zamii shoots at enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Plaugewalker",0.38,0.38,0,c_lime,c_lime,c_green,c_green,1);
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
	draw_text_transformed_color(65,450,		  "[Passive]: A holy beam from above ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"follows your mouse movement and deals ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"damage to enemies it burns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"[Attack]: Shoot a big holy bolt.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"[Ability][1]: Teleport and place a holy",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"area which burns your enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"[Ability][2]: Dash a long distance and shoot",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"a big holy bolt towards dash direction.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"[Ultimate]: Breathe holy fire over 5",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Agent of God",0.38,0.38,0,c_aqua,c_aqua,c_silver,c_silver,1);
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
	draw_text_transformed_color(65,450,		  "[Passive]: Gain speed with every attack",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"and spell cast. Speed increases the",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"power of your spells and attacks.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"The range of your [Attack] and [Ultimate]",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"is shown by the circle around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"[Attack]: Shot a burst of shadow bolts.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[Ability][1]: Heal yourself.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"[Ability][2]: Place an area that damages",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"enemies and increases your speed. ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ultimate]: Dash and deal massive damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"to enemies dash trough. You do not take",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"damage when touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Graveling",0.38,0.38,0,c_gray,c_gray,c_dkgray,c_black,1);
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
	draw_text_transformed_color(65,450,		  "[Passive][1]: All abilities allow you to ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*1,"use your [Left-Click] ability again.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*2,"[Passive][2]: The Angel Slayer can't have",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*3,"more than 100 Health Points.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*5,"[Attack]: Dash then Slash with you",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*6,"scythe in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450 +17.5*8,"[Ability][1]: Dash Back and summon",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*9,"demons.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*11,"[Ability][2]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*13,"[Ultimate]: Spin your scythe for 6 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*14,"During this time you cant use the other",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*15,"abilities but you gain a 50% speed boost.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(65,450+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	
	//name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(163,216,"The Angel Slayer",0.38,0.38,0,c_red,c_red,c_black,c_black,1);
	//stats
	draw_text_transformed_color(295,320-15-5,"Sustain: Low",0.275,0.275,0,c_lime,c_lime,c_green,c_green,1);
	draw_text_transformed_color(295,340-15+15-5,"Damage: High",0.275,0.275,0,c_red,c_red,c_maroon,c_maroon,1);
	draw_text_transformed_color(295,360-15+30-5,"Mobility: High",0.275,0.275,0,c_aqua,c_aqua,c_blue,c_blue,1);
	draw_text_transformed_color(295,380-15+45-5,"Cooldowns: Low",0.275,0.275,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
}
#endregion


