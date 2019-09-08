/// @description Note
if (gameMaster.chosenBoss == Boss.TheCorrupter1 && attack == Atks.BeamAttack && drawArea == true)
{
	if (phase == 1)
	{
		draw_line_width_color(x-600,y,x+600,y,1,global.orange,global.orange);
		draw_line_width_color(x,y-600,x,y+600,1,global.orange,global.orange);
	}
	if (phase == 2)
	{
		draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
	}
}

draw_self();
//Tier 1 - 1-3phases, 2-3moves, 2.5 seconds reaction Time, 6 seconds cdr
//Tier 2 - 2-4 phases, 3-4moves, 2 seconds reaction Time, 5.5seconds cdr
//Tier 3 - 3-4 phases 4-6 moves, 1.75 seconds reaction Time, 5 seconds cdr
//Tier 4 - 4 phases 5-7 moves, 1.5 seconds reaction Time, 4.5 seconds cdr
//Tier 5 -5 phases  6-8 moves, 1 seconds reaction Time, 4 seconds cdr
//Tier 6 -5 phases but last is hidden 7-9 moves,  0.75 seconds reaction Time, 3.5 seconds cdr

//BOSS COLOR CODING
//Purple - Teleport
//neon Red - One shot type ability
//maroon - normal attacks
//Magenta -  circle attack
//Yellow - Chase
//Lime - Heal self
//Blue - goo on ground type attack
//Orange - beam type attack
//aqua - Cone attack
//teal - Summoning 