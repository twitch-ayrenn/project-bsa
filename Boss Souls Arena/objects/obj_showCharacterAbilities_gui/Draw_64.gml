/// @description Insert description here
var xText = 10;
var yText = 200;
if (hover == true)
{
	draw_set_alpha(0.65)
	draw_rectangle_color(xText-5,yText-5,475,500,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
	draw_text_transformed_color(xText+40,yText+17.5*-2,"Abilites",0.4,0.4,0,global.orange,global.orange,c_yellow,c_yellow,1);
	#region The Red Warrior
	if (gameMaster.chosenClass == Character.TheRedWarrior)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Pyromancer
	if (gameMaster.chosenClass == Character.Pyromancer)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "[Passive]: Each ability summons a flame",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"portal that shoots where you aim.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"[Left-Click]: Shoot a fireball. Hold to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"charge for up to 2.5 seconds. Charging",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"the fireball increases size and damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"[Right-Click]: Shoot waves of fireballs",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"in a cone. Cone amoumt increases with",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"damage stat.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"[Space]: Dash a long distance.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"[Ult/E]: Become a giant meteor that falls",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"from the sky. Deal massive damage and ",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"leave a fiery ground that deals damage",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"for 10 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Shadow Assassin
	if (gameMaster.chosenClass == Character.ShadowAssassin)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "[Passive]: All abilities allow you to use",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"your [Left-Click] ability again.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"[Left-Click]: Click inside the purple circle",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"to teleport and throw knives around you.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*8,"[Right-Click]: Summon a Shadow, it also",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"throws knives when you use [Left-Click].",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"[Space]: Dash and make the circle around",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"you deal damage for 4 seconds.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"[Ult/E]: Fully heal yourself and reset all",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"your ability cooldowns.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Shopkeeper
	if (gameMaster.chosenClass == Character.Shopkeeper)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Bloodknight
	if (gameMaster.chosenClass == Character.BloodKnight)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,	   "[Passive]: Your blood armor doubles",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"your health and health upgrades.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"[Left-Click]: Summon bats that kill your",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"enemies.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"[Right-Click]: Dash and deal damage to",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"enemies in your way.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*8,"#Note you do not take damage when",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"touching an enemy.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"[Space]: Dash and summon bats in a circle.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"[Ult/E]: Shoot a blood beam towards a",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"direction. It deals massive damage.",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"#Note you cannot aim it",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Rainbow Slime
	if (gameMaster.chosenClass == Character.RainbowSlime)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Plaugewalker
	if (gameMaster.chosenClass == Character.PlaugeWalker)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Agent of God
	if (gameMaster.chosenClass == Character.AgentOfGod)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Graveling
	if (gameMaster.chosenClass == Character.Graveling)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
	#region The Angel Slayer
	if (gameMaster.chosenClass == Character.AngelSlayer)
	{
		//description
		draw_set_font(fnt_NewNormalText);
		draw_text_transformed_color(xText,yText,		  "Locked for Alpha Build",0.075,0.075,0,c_dkgray,c_dkgray,c_black,c_black,1);
		draw_text_transformed_color(xText,yText+17.5*1,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*2,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*3,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*4,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*5,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*6,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*7,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText +17.5*8,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*9,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*10,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*11,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*12,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*13,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*14,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*15,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
		draw_text_transformed_color(xText,yText+17.5*16,"",0.075,0.075,0,c_white,c_white,c_white,c_white,1);
	}
	#endregion
}