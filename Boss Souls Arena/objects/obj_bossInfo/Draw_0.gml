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
	draw_text_transformed_color(x+2,y+2,"The Blood Harvester",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"I found this big boy destroying poor",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"villages and towns. If i were you i",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"would avoid the toxic blood you will",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"release after getting hit.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Wisp Sister Anna
if(showBossInfo == Boss.FlameWisp)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sister Anna",0.08,0.08,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"An elemental of pure fire and rage,",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"she burns anything in her way. captured",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"to become a fighter at my arena.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"Anna shoots massive fireballs that",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"seek their targets so be ready to run.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+3,y+startY+4*1,"The Corrupter, a minion of the old",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"corruption. There were hundreds of ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"corrupters but i wanted the strongest",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"one so i had them fight each other.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"This is the last remaning one. Watch",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"out for the deadly fire beam attacks.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+3,y+startY+4*1,"On top of the Dead Tower he observed",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+3,y+startY+4*2,"of her fallen enemies. When at risk of ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"dying she will become mad and attack",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"rapidly.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+2,y+2,"Death Knight",0.08,0.08,0,c_aqua,c_aqua,c_teal,c_teal,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Once a knight with a quest to save the",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"prince. Now back from the dead fueled ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"by anger because of her failure.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"The Death Knight fights with a deadly",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"scythe that can combo attacks up to 3",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"times.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+3,y+startY+4*4,"destruction are his specialty.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region The Knight Witch
if(showBossInfo == Boss.KnightWitchYi)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Knight Witch",0.08,0.08,0,c_lime,c_lime,c_green,c_green,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Before joining the arena he was a",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*2,"deadly bounty hunter that never ever",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*3,"turned down a contract. What i love",textScale,textScale,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x+3,y+startY+4*4,"about the Knight Witch is that he",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"uses the blood of his opponents to ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"his own advantage in combat.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
	draw_text_transformed_color(x+3,y+startY+4*1,"A knight of heaven, one of two holy",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"fighters who joined the arena to",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"banish the evil. If they want to beat",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"me, they can try! He summons slimes",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"that heal him if they reach him and",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"shoots deadly holy beams rapidly.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Demon General Rektaar
if(showBossInfo == Boss.DemonLordRekTaar)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Demon General Rektaar",0.08,0.08,0,global.orange,global.orange,c_yellow,c_yellow,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"One of my strongest demons. The",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"general of the demonic army here",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"just to kill you haha. Rektaar has",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"masterd clone magic.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region The Gravekeeper
if(showBossInfo == Boss.Gravekeeper)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Gravekeeper",0.08,0.08,0,c_white,c_white,c_silver,c_silver,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"With his scythe he sowed the graves",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"planting floors on top of them. His",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"only purpose was to guard the graves.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"I noticed he had incredible strength",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"due to his teleporting abilities so i",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"destroyed all his graves and set him ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"loose in the arena.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Blood General
if(showBossInfo == Boss.BloodKnightDavid)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Blood General",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The representative of the vamperic",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"order. They say he got his size from",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"sucking the blood out of an entire town.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"His singnature move is his spining blood",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"beam of death.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Statue of Corruption
if(showBossInfo == Boss.StatueOfCorruption)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Statue Of Corruption",0.08,0.08,0,c_fuchsia,c_fuchsia,c_purple,c_purple,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"I had many fine demons die just to",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"move this statue inside the arena.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"I challange you to not get hit by",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"a single attack!",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Wisp Sisters
if(showBossInfo == Boss.WispSisters)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Wisp Sisters",0.08,0.08,0,global.orange,c_aqua,c_teal,c_orange,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"You know what you have in common",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"with the wisp sisters? Your useless!",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"Well hoppefully together they can",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"take you down. ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Demon Queens Head
if(showBossInfo == Boss.DemonQueensHead)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Demon Queens Head",0.08,0.08,0,c_red,c_red,c_maroon,c_maroon,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"The strongest demon in the arena by",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"far after me of course. A long time ago",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"a knight of heaven defeated her and ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"seperated her head from the body.  ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"Still with her head alone she destroyes ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"everything in her way. Her size alone",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"will kill you if she lands on you so i",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*8,"would recommend max out your moblity.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region The Death King
if(showBossInfo == Boss.DeathKing)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Death King",0.08,0.08,0,c_aqua,c_aqua,c_silver,c_silver,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"King of the dead here in person just",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"to retrive your damned soul. Just like",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"all gravekin he wields extraordinary",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"teleporting and mind-reading capabilities.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Slime Queen
if(showBossInfo == Boss.SlimeQueen)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"Slime Queen Terra",0.08,0.08,0,c_aqua,c_aqua,c_silver,c_silver,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Terra the Slime Queen here to turn you",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"into goo. Your final royal opponent",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"before you can fight me! Haha i want to",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"see you try to avoid poison goo.",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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
#region Arena King
if(showBossInfo == Boss.ArenaKing)
{
	//Name
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(x+2,y+2,"The Arena King",0.08,0.08,0,c_aqua,c_aqua,c_silver,c_silver,1);
	
	//description
	draw_set_font(fnt_NewNormalText);
	draw_text_transformed_color(x+3,y+startY+4*1,"Finnaly the time has come for me to ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*2,"destroy you! Its impresive that you",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*3,"made it this far. Just kidding its not!",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*4,"Anyone with with real power should be",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*5,"able slay the previous challangers with",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*6,"ease. Remember their attacks or do i ",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
	draw_text_transformed_color(x+3,y+startY+4*7,"have to remind you?",textScale,textScale,0,c_white,c_white,c_white,c_white,1);	
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