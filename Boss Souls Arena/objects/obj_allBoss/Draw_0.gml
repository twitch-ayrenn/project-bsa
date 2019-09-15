/// @description Note
#region beamAttack
if (attack == Atks.BeamAttack && drawArea == true)
{
	if (gameMaster.chosenBoss == Boss.TheCorrupter1)
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
	if (gameMaster.chosenBoss == Boss.TheMadWitches)
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
draw_self();
