/// @description Insert description here
// You can write your code in this editor
//draw_self();
var startY = 5;
var textScale = 0.0125;
var bossText = "";
if(showBossInfo == Boss.NoBoss){			bossText = "Select a Boss";}
if(showBossInfo == Boss.BloodZombie){		bossText = "Blood Harvester";}
if(showBossInfo == Boss.FlameWisp){			bossText = "Flame Wisp";}
if(showBossInfo == Boss.TheCorrupter){		bossText = "Corrupter";}
if(showBossInfo == Boss.FlameGate){			bossText = "Eye of Hell";}
if(showBossInfo == Boss.WispSisterJulia){	bossText = "Soul Wisp";}
if(showBossInfo == Boss.DeathKnight){		bossText = "Death Knight";}
if(showBossInfo == Boss.AngelSlayerRekZul){	bossText = "Angel Slayer Demon";}
if(showBossInfo == Boss.KnightWitchYi){		bossText = "Knight Witch";}
if(showBossInfo == Boss.AngelKnightOscar){	bossText = "Angel Knight";}
if(showBossInfo == Boss.DemonLordRekTaar){	bossText = "The Demon General";}
if(showBossInfo == Boss.Gravekeeper){		bossText = "Gravekeeper";}
if(showBossInfo == Boss.BloodKnightDavid){	bossText = "Blood Army General";}
if(showBossInfo == Boss.StatueOfCorruption){bossText = "Statue Of Corruption";}
if(showBossInfo == Boss.WispSisters){		bossText = "The Wisp Sisters";}
if(showBossInfo == Boss.DemonQueensHead){	bossText = "Demon Queens Head";}
if(showBossInfo == Boss.DeathKing){			bossText = "The Lord Of Death";}
if(showBossInfo == Boss.SlimeQueen){		bossText = "The Slime Queen";}
if(showBossInfo == Boss.ArenaKing){			bossText = "The Arena King";}
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_menu_fill);
draw_text_transformed_color(x+2,y+2,bossText,0.12,0.12,0,global.orange,global.orange,c_yellow,c_yellow,1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);