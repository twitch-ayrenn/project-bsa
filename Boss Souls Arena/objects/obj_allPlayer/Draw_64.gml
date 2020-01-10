/// @description Insert description here
#region Bosses
if (gameMaster.chosenBoss == Boss.Gravekeeper)
{
	draw_sprite_ext(spr_darkness,0,0,0,2,2,0,c_black,blackOutAlpha);
}
#endregion
#region AllBosses
var darkGray = make_color_rgb(10,10,10);
if (instance_exists(obj_allBoss))
{
	var B = obj_allBoss;
	draw_healthbar(360,800,760,843,(B.hp/B.maxHp)*100,darkGray,c_maroon,c_red,1,true,true);
	draw_healthbar(845,800,1245,843,(B.hp/B.maxHp)*100,darkGray,c_maroon,c_red,0,true,true);
	draw_sprite_ext(spr_bossBar,0,800,820,5,5,0,B.attackColor,1);
	if (B.maxPhase == 1)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		}
	}
	if (B.maxPhase == 2)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
		}
	}
	if (B.maxPhase == 3)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
		}
		if (B.phase == 3)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
		}
	}
	if (B.maxPhase == 4)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
		}
		if (B.phase == 3)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
		}
		if (B.phase == 4)
		{
			draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
		}
	}
}
#endregion
#region specific bosses

#endregion
#region Player Ui
draw_healthbar(130,40,75+225+maxHp*1,66,(hp / maxHp) * 100,c_dkgray,c_maroon,c_red,0,false,true);
//ult
draw_healthbar(125,75,185-1,135,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
//leftClick
draw_healthbar(195,75,235-1,115,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
//dash
draw_healthbar(245,75,305-1,105,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
//rightCLick
draw_healthbar(315,75,355-1,115,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);

draw_sprite_ext(spr_healthBarNew,0,85,30,5,5,0,c_white,1);
if (gameMaster.chosenClass == Character.ShadowAssassin){draw_sprite_ext(spr_player_theAssasin,0,77,75,7.5,7.5,0,c_white,1);}
if (gameMaster.chosenClass == Character.Pyromancer){draw_sprite_ext(spr_player_theMage_menu,0,77,75,7,7.,0,c_white,1);}
if (gameMaster.chosenClass == Character.BloodKnight){draw_sprite_ext(spr_player_theBloodKnight,0,68,60,7.5,7.5,0,c_white,1);}


draw_set_font(fnt_NewNormalText);
draw_text_transformed_color(145,87,"E",0.3*0.35,0.3*0.35,0,c_black,c_black,c_black,c_black,0.35);
draw_text_transformed_color(203,84,"M1",0.2*0.35,0.2*0.35,0,c_black,c_black,c_black,c_black,0.35);
draw_text_transformed_color(250,81,"Space",0.175*0.35,0.175*0.35,0,c_black,c_black,c_black,c_black,0.35);
draw_text_transformed_color(320,84,"M2",0.2*0.35,0.2*0.35,0,c_black,c_black,c_black,c_black,0.35);

//cursor
var cursorSize = 2;
//left click
if (canLeftClick == true){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,leftClickColor,1);}
if (canLeftClick == false){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
//ult
if (canUlt == true){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,ultColor,1);}
if (canUlt == false){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,c_dkgray,1);}
//rightclick
if (canRightClick == true){draw_sprite_part_ext(spr_newCursor1,0,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,rightClickColor,1);}
if (canRightClick == false){draw_sprite_part_ext(spr_newCursor1,0,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
//dash
if (canDash == true){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,dashColor,1);}
if (canDash == false){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,c_dkgray,1);}
#endregion