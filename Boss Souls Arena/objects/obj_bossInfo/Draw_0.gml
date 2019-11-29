/// @description Insert description here
// You can write your code in this editor
draw_self();
var startY = 5;
#region No Boss
if(showBossInfo == Boss.NoBoss)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Blood Harvester
if(showBossInfo == Boss.BloodZombie)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Blood Harvester",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A giant zombie that wrecked",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"havoc upon villages and",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"cities.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"The Blood Harvesters",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"attacks causes his enemies",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"to bleed out toxic blood.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Wisp Sister Anna
if(showBossInfo == Boss.FlameWisp)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sister Anna",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"An elemental of pure",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"fire and rage, she burns",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"anything in her way.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"Anna shoots massive",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"fireballs that seek their",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"targets so be ready to run.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Corrupter
if(showBossInfo == Boss.TheCorrupter)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Corrupter",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The Corrupter is a minion",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"of Lady Corruption. ",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"There were thousands of",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"Corrupters but this one ",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"killed all his brethren to",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"become the only servant of",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"the Queen, Lady Corruption.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Eye of Hell
if(showBossInfo == Boss.FlameGate)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Eye of Hell",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"On top of the Dead Tower",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"he observes all of hell",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"watching from east to west.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"The Demonic eye attacks ",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"fast with little rest",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"inbetween attacks.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Wisp Sister Julia
if(showBossInfo == Boss.WispSisterJulia)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sister Julia",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A Soul Wisp containing all",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"the souls of her fallen",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"enemies. When at risk of",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"dying the Soul Wisp enrages",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"and attacks rapidly.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Death Knight
if(showBossInfo == Boss.DeathKnight)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Death Knight",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Death Knights are soldiers",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"of the Dead Army but even",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"though they are considerd",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"foder whitin the Army, They",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"can be formidable opponents.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"Death Knight fight with",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"a deadly scythe that can",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"combo up to 3 times.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Angel Slayer Rekzul
if(showBossInfo == Boss.AngelSlayerRekZul)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Angel Slayer Rekzul",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"This demon has earned the",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"title of Angel Slayer. He",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"has slain over a thousand",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"angels. Demonic beams of",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"destruction is his specialty.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Witch Knight Yi
if(showBossInfo == Boss.KnightWitchYi)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Knight Witch Yi",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The Knight Witch is a bounty",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*2,"hunter that only takes",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*3,"contracts from himself.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*4,"He sacrefices his blood to",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"lay down blood puddels that",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"damage his enemies.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Angel Knight Oscar
if(showBossInfo == Boss.AngelKnightOscar)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Angel Knight Oscar",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A Knight of heaven, Oscar ",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"serves the good and will",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"repent anyone that stands",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"in his way. He summons",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"slimes that heal him if",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"they reach him.",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",0.017,0.017,0,c_white,c_white,c_white,c_white,1);
}
#endregion