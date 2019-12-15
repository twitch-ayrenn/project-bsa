/// @description Insert description here
// You can write your code in this editor
draw_self();
var startY = 5;
var textScale = 0.0125;
#region No Boss
if(showBossInfo == Boss.NoBoss)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The boss crystal in the middle and",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"your opponents eyes indicate which",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"attack your opponent will Do.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4," ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"Maroon: Standard Attack.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"Magenta: Circle Attack.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"Blue: Area Denial.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"Aqua Blue: Cone Attack.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"Red: Massive projectile.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"Yellow: Chase Attack\"Run\".",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"Light Blue: Multiple",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"Sucsesive Attacks.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"Orange: Beam Attack",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"Purple: Teleport Attack.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"Green: Stand in Area to",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"survive.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"Lime Green: Summons Healing",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"orbs. Destory them.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Blood Harvester
if(showBossInfo == Boss.BloodZombie)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Blood Harvester",0.08,0.08,0,c_lime,c_lime,c_green,c_green,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A giant zombie that wrecked havoc",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"upon villages and cities.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"The Blood Harvesters attacks causes",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"his enemies to bleed out toxic blood.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5," ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Wisp Sister Anna
if(showBossInfo == Boss.FlameWisp)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sister Anna",0.08,0.08,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"An elemental of pure fire andrage,",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"she burns anything in her way.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"Anna shoots massive fireballs that",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"seek their targets so be ready to run.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region The Corrupter
if(showBossInfo == Boss.TheCorrupter)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Corrupter",0.08,0.08,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The Corrupter is a minion of Lady",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"Corruption.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"There were thousands of Corrupters but",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"this one killed all his brethren to",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"become the only servant of the Queen,",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"Lady Corruption.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
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
	draw_text_transformed_color(x+3,y+startY+4*1,"On top of the Dead Tower he observes",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"all of hell watching from east to west.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"The Demonic eye attacks fast with" ,textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"little rest inbetween attacks.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Wisp Sister Julia
if(showBossInfo == Boss.WispSisterJulia)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sister Julia",0.08,0.08,0,c_aqua,c_aqua,c_teal,c_teal,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A Soul Wisp containing all the souls",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"of her fallen enemies. When at risk ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"of dying the Soul Wisp enrages and",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"attacks rapidly.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Death Knight
if(showBossInfo == Boss.DeathKnight)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Death Knight",0.08,0.08,0,c_silver,c_silver,c_gray,c_gray,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Death Knights are soldiers of the",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"Dead Army but even though they are",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"considerd foder whitin the Army,",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"They can be formidable opponents.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"Death Knight fight with a deadly",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"scythe that can combo up to 3 times.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
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
	draw_text_transformed_color(x+3,y+startY+4*1,"This demon has earned the title of",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"Angel Slayer. He has slain over a",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"thousand angels. Demonic beams of",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"destruction is his specialty.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Witch Knight Yi
if(showBossInfo == Boss.KnightWitchYi)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Knight Witch Yi",0.08,0.08,0,c_red,c_red,c_black,c_black,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The Knight Witch is a bounty",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*2,"hunter that only takes contracts",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*3,"from himself. He sacrefices his",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*4,"blood to lay down blood puddels",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"that damage his enemies.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion
#region Angel Knight Oscar
if(showBossInfo == Boss.AngelKnightOscar)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Angel Knight Oscar",0.08,0.08,0,c_aqua,c_aqua,c_silver,c_silver,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"A Knight of heaven, Oscar serves",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"the good and will repent anyone",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"that stands in his way.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"He summons slimes that heal him if",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"they reach him.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*9,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*10,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*11,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*12,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*13,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*14,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*15,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*16,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*17,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*18,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*19,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*20,"",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
}
#endregion