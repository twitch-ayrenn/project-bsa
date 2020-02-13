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
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul )
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
			//draw_line_width_color(global.arenaMiddleX+150,y+1000,global.arenaMiddleX+150,y-1000,1,c_green,c_green);
			//draw_line_width_color(global.arenaMiddleX+125,y+1000,global.arenaMiddleX+125,y-1000,1,c_green,c_green);
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
	#region Statue Of Corruption
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption)
	{
		if (attack == Atks.BeamAttack)
		{
			draw_line_width_color(x-600,y,x+600,y,1,global.orange,global.orange);
			draw_line_width_color(x,y-600,x,y+600,1,global.orange,global.orange);
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
	}
	#endregion
	#region Demon Queens Head
	if (gameMaster.chosenBoss == Boss.DemonQueensHead && attack == Atks.BeamAttack)
	{
		draw_line_width_color(x-600,y,x+600,y,1,global.orange,global.orange);
	}
	#endregion
	#region Arena King
	if (gameMaster.chosenBoss == Boss.ArenaKing)
	{
		if (attack == Atks.CircleAttack)
		{
			draw_line_width_color(x,y,x+600,y,1,global.goldColor,global.goldColor);
			draw_line_width_color(x,y,x+600,y-346,1,global.goldColor,global.goldColor);//30
			draw_line_width_color(x,y,x+600,y-1040,1,global.goldColor,global.goldColor);//60
			draw_line_width_color(x,y,x,y-600,1,global.goldColor,global.goldColor);//90
			draw_line_width_color(x,y,x-600,y-346,1,global.goldColor,global.goldColor);//120
			draw_line_width_color(x,y,x-600,y-1040,1,global.goldColor,global.goldColor);//150
			draw_line_width_color(x,y,x-600,y,1,global.goldColor,global.goldColor);//180
			draw_line_width_color(x,y,x-600,y+346,1,global.goldColor,global.goldColor);//210
			draw_line_width_color(x,y,x-600,y+1040,1,global.goldColor,global.goldColor);//240
			draw_line_width_color(x,y,x,y+600,1,global.goldColor,global.goldColor);//270
			draw_line_width_color(x,y,x+600,y+346,1,global.goldColor,global.goldColor);//300
			draw_line_width_color(x,y,x+600,y+1040,1,global.goldColor,global.goldColor);//330
			draw_line_width_color(x,y,x+600,y,1,global.goldColor,global.goldColor);//360
			//Clone
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY,1,global.goldColor,global.goldColor);
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY-346,1,global.goldColor,global.goldColor);//30
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY-1040,1,global.goldColor,global.goldColor);//60
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX,kingCloneY-600,1,global.goldColor,global.goldColor);//90
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX-600,kingCloneY-346,1,global.goldColor,global.goldColor);//120
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX-600,kingCloneY-1040,1,global.goldColor,global.goldColor);//150
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX-600,kingCloneY,1,global.goldColor,global.goldColor);//180
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX-600,kingCloneY+346,1,global.goldColor,global.goldColor);//210
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX-600,kingCloneY+1040,1,global.goldColor,global.goldColor);//240
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX,kingCloneY+600,1,global.goldColor,global.goldColor);//270
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY+346,1,global.goldColor,global.goldColor);//300
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY+1040,1,global.goldColor,global.goldColor);//330
			draw_line_width_color(kingCloneX,kingCloneY,kingCloneX+600,kingCloneY,1,global.goldColor,global.goldColor);//360
		}
		if (attack == Atks.BeamAttack)
		{
			draw_line_width_color(x,y,obj_allPlayer.x,obj_allPlayer.y,1,global.goldColor,global.goldColor);
			draw_line_width_color(kingCloneX,kingCloneY,obj_allPlayer.x,obj_allPlayer.y,1,global.goldColor,global.goldColor);
		}
	}
	#endregion
}
#endregion
//boss Specific
#region Demon General Rektaar
if (gameMaster.chosenBoss == Boss.DemonLordRekTaar)
{
	if (phase == 2 || phase == 3)
	{
		draw_sprite_ext(spr_demonPortal_1,0,global.arenaMiddleX-175,global.arenaMiddleY,1,1,rotation1,c_white,0.85);
		draw_sprite_ext(spr_demonPortal_2,0,global.arenaMiddleX-175,global.arenaMiddleY,1,1,rotation2,c_white,0.85);
		draw_sprite_ext(spr_demonPortal_3,0,global.arenaMiddleX-175,global.arenaMiddleY,1,1,rotation3,c_white,0.85);
	}
	if (phase == 3)
	{	
		draw_sprite_ext(spr_demonPortal_1,0,global.arenaMiddleX+175,global.arenaMiddleY,1,1,rotation1+35,c_white,0.85);
		draw_sprite_ext(spr_demonPortal_2,0,global.arenaMiddleX+175,global.arenaMiddleY,1,1,rotation2+35,c_white,0.85);
		draw_sprite_ext(spr_demonPortal_3,0,global.arenaMiddleX+175,global.arenaMiddleY,1,1,rotation3+35,c_white,0.85);
	}
}
#endregion
#region Arena King
if (gameMaster.chosenBoss == Boss.ArenaKing)
{
	draw_sprite_ext(spr_boss_arenaKing_idle,image_index,kingCloneX,kingCloneY,image_xscale,image_yscale,0,c_gray,clamp(image_alpha-0.25,0,0.75));	
}
#endregion

if (isHit == false){draw_self();}
if (isHit == true)
{
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
}

