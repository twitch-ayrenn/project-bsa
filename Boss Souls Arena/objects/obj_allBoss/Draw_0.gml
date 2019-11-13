/// @description Note
#region beamAttacks
if (drawArea == true)
{
	#region The Corrupter
	if (gameMaster.chosenBoss == Boss.TheCorrupter && attack == Atks.BeamAttack)
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
	#endregion
	#region The Mad Witches
	if (gameMaster.chosenBoss == Boss.TheMadWitches && attack == Atks.BeamAttack)
	{
		if (position == 1)
		{
			draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,c_lime,c_lime);
			draw_line_width_color(topX,topY,obj_allPlayer.x,obj_allPlayer.y,1,c_yellow,c_yellow);
			draw_line_width_color(rightX,rightY,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
		}
		if (position == 2)
		{
			draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,c_yellow,c_yellow);
			draw_line_width_color(leftX,leftY,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
			draw_line_width_color(rightX,rightY,obj_allPlayer.x,obj_allPlayer.y,1,c_lime,c_lime);
		}
		if (position == 3)
		{
			draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
			draw_line_width_color(rightX,rightY,obj_allPlayer.x,obj_allPlayer.y,1,c_yellow,c_yellow);
			draw_line_width_color(leftX,leftY,obj_allPlayer.x,obj_allPlayer.y,1,c_lime,c_lime);
		}
	}
	#endregion
	#region Angel Slayer
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		if (attack == Atks.BeamAttack)
		{
			draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
		}
		if (attack == Atks.CircleAttack)
		{
			draw_line_width_color(x,y,x+600,y,1,c_fuchsia,c_fuchsia);
			draw_line_width_color(x,y,x+600,y-346,1,c_fuchsia,c_fuchsia);//30
			draw_line_width_color(x,y,x+600,y-1040,1,c_fuchsia,c_fuchsia);//60
			draw_line_width_color(x,y,x,y-600,1,c_fuchsia,c_fuchsia);//90
			draw_line_width_color(x,y,x-600,y-346,1,c_fuchsia,c_fuchsia);//120
			draw_line_width_color(x,y,x-600,y-1040,1,c_fuchsia,c_fuchsia);//150
			draw_line_width_color(x,y,x-600,y,1,c_fuchsia,c_fuchsia);//180
			draw_line_width_color(x,y,x-600,y+346,1,c_fuchsia,c_fuchsia);//210
			draw_line_width_color(x,y,x-600,y+1040,1,c_fuchsia,c_fuchsia);//240
			draw_line_width_color(x,y,x,y+600,1,c_fuchsia,c_fuchsia);//270
			draw_line_width_color(x,y,x+600,y+346,1,c_fuchsia,c_fuchsia);//300
			draw_line_width_color(x,y,x+600,y+1040,1,c_fuchsia,c_fuchsia);//330
			draw_line_width_color(x,y,x+600,y,1,c_fuchsia,c_fuchsia);//360
		}
		if (attack == Atks.ZoneAttack)
		{
			draw_line_width_color(global.arenaMiddleX-200,y+1000,global.arenaMiddleX-200,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-175,y+1000,global.arenaMiddleX-175,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-150,y+1000,global.arenaMiddleX-150,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-125,y+1000,global.arenaMiddleX-125,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-100,y+1000,global.arenaMiddleX-100,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-75,y+1000,global.arenaMiddleX-75,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-50,y+1000,global.arenaMiddleX-50,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX-25,y+1000,global.arenaMiddleX-25,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX,y+1000,global.arenaMiddleX,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+150,y+1000,global.arenaMiddleX+150,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+125,y+1000,global.arenaMiddleX+125,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+100,y+1000,global.arenaMiddleX+100,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+75,y+1000,global.arenaMiddleX+75,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+50,y+1000,global.arenaMiddleX+50,y-1000,1,c_green,c_green);
			draw_line_width_color(global.arenaMiddleX+25,y+1000,global.arenaMiddleX+25,y-1000,1,c_green,c_green);
		}
		
	}
	#endregion
	#region Knight witch yi
	if (gameMaster.chosenBoss == Boss.KnightWitchYi && attack == Atks.BeamAttack)
	{
		draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,global.orange,global.orange);
	}
	#endregion
	#region Angel Knight Oscar
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar && attack == Atks.RapidFire)
	{
		draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,c_aqua,c_aqua);
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar && attack == Atks.BeamAttack)
	{
		draw_line_width_color(x-600,y,x+600,y,1,global.orange,global.orange);
		draw_line_width_color(x,y-600,x,y+600,1,global.orange,global.orange);
	}
	#endregion
}
#endregion
if (gameMaster.chosenBoss == Boss.TheMadWitches)
{
	var fakeAlpha = 0.65;
	if (attack == Atks.BeamAttack)
	{
		if (position == 1){draw_sprite_ext(spr_theOrangeWitch_beam,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 1){draw_sprite_ext(spr_theYellowWitch_beam,image_index,topX,topY,size,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_boss_theGreenWitch_beam,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_theOrangeWitch_beam,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_boss_theGreenWitch_beam,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_theYellowWitch_beam,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
	}
	if (attack == Atks.GooSpawn)
	{
		if (position == 1){draw_sprite_ext(spr_theOrangeWitch_goo,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 1){draw_sprite_ext(spr_theYellowWitch_goo,image_index,topX,topY,size,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_boss_theGreenWitch_goo,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_theOrangeWitch_goo,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_boss_theGreenWitch_goo,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_theYellowWitch_goo,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
	}
	if (attack == Atks.RapidFire)
	{
		if (position == 1){draw_sprite_ext(spr_theOrangeWitch_rapidFire,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 1){draw_sprite_ext(spr_theYellowWitch_rapidFire,image_index,topX,topY,size,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_boss_theGreenWitch_rapidFire,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
		if (position == 2){draw_sprite_ext(spr_theOrangeWitch_rapidFire,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_boss_theGreenWitch_rapidFire,image_index,leftX,leftY,1,size,0,c_white,fakeAlpha);}
		if (position == 3){draw_sprite_ext(spr_theYellowWitch_rapidFire,image_index,rightX,rightY,-1,size,0,c_white,fakeAlpha);}
	}
}
if (isHit == false){draw_self();}
if (isHit == true)
{
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
}
