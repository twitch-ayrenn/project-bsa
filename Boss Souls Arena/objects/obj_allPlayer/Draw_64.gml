/// @description Insert description here
#region Bosses
if (gameMaster.chosenBoss == Boss.BloodRoyalVarus)
{
	draw_sprite_ext(spr_blackOut,0,0,0,0.833,0.833,0,c_black,blackOutAlpha);
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
#region Shadow Assassin
if (class == Character.ShadowAssassin)
{
	draw_healthbar(85,47,75+235+maxHp*0.4,60+17,(hp / maxHp) * 100,c_dkgray,c_maroon,c_red,0,false,true);
	//ult
	draw_healthbar(135,45,140-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(140,45,145-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(145,45,150-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(150,45,155-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(155,45,160-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	//leftClick
	draw_healthbar(175,45,180-1,100,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(180,45,185-1,105,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(185,45,190-1,95,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	//dash
	draw_healthbar(200,70,205-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(205,40,210-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(210,40,215-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(215,40,220-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(220,70,225-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	//rightCLick
	draw_healthbar(235,45,240-1,95,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(240,45,245-1,105,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(245,45,250-1,100,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	
	draw_sprite_ext(spr_hpbar,0,50,15,5,5,0,c_white,1);
	
	draw_sprite_ext(spr_player_theAssasin,0,65,65,6,6,0,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(142,115,"E",0.2,0.2,0,ultColor,ultColor,c_white,c_white,1);
	draw_text_transformed_color(175,115,"M1",0.2,0.2,0,leftClickColor,leftClickColor,c_white,c_white,1);
	draw_text_transformed_color(193,96,"Space",0.175,0.175,0,dashColor,dashColor,c_white,c_white,1);
	draw_text_transformed_color(235,115,"M2",0.2,0.2,0,rightClickColor,rightClickColor,c_white,c_white,1);
	
	//cursor
	var cursorSize = 2;
	if (knivesToThrow > 0)
	{
		//left click
		if (canLeftClick == true){draw_sprite_part_ext(spr_newCursor1,1,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,leftClickColor,1);}
		if (canLeftClick == false){draw_sprite_part_ext(spr_newCursor1,1,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
		//ult
		if (canUlt == true){draw_sprite_part_ext(spr_newCursor1,1,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,ultColor,1);}
		if (canUlt == false){draw_sprite_part_ext(spr_newCursor1,1,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,c_dkgray,1);}
		//rightclick
		if (canRightClick == true){draw_sprite_part_ext(spr_newCursor1,1,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,rightClickColor,1);}
		if (canRightClick == false){draw_sprite_part_ext(spr_newCursor1,1,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
		//dash
		if (canDash == true){draw_sprite_part_ext(spr_newCursor1,1,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,dashColor,1);}
		if (canDash == false){draw_sprite_part_ext(spr_newCursor1,1,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,c_dkgray,1);}
	
		draw_text_transformed_color(device_mouse_x_to_gui(0)-33,device_mouse_y_to_gui(0)-37,knivesToThrow,0.2,0.2,0,leftClickColor,knivesToThrow,knivesToThrow,knivesToThrow,1);
	}
	if (knivesToThrow == 0)
	{
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
	}
}
#endregion
#region Pryomancer
if (class == Character.Pyromancer)
{
	draw_healthbar(85,47,75+235+maxHp*0.4,60+17,(hp / maxHp) * 100,c_dkgray,c_maroon,c_red,0,false,true);
	//ult
	draw_healthbar(135,45,140-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(140,45,145-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(145,45,150-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(150,45,155-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(155,45,160-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	//leftClick
	draw_healthbar(175,45,180-1,100,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(180,45,185-1,105,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(185,45,190-1,95,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	//dash
	draw_healthbar(200,70,205-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(205,40,210-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(210,40,215-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(215,40,220-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(220,70,225-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	//rightCLick
	draw_healthbar(235,45,240-1,95,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(240,45,245-1,105,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(245,45,250-1,100,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);
	
	draw_sprite_ext(spr_hpbar,0,50,15,5,5,0,c_white,1);
	
	draw_sprite_ext(spr_player_theMage_menu,0,65,65,6,6,0,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(142,115,"E",0.2,0.2,0,ultColor,ultColor,c_white,c_white,1);
	draw_text_transformed_color(175,115,"M1",0.2,0.2,0,leftClickColor,leftClickColor,c_white,c_white,1);
	draw_text_transformed_color(193,96,"Space",0.175,0.175,0,dashColor,dashColor,c_white,c_white,1);
	draw_text_transformed_color(235,115,"M2",0.2,0.2,0,rightClickColor,rightClickColor,c_white,c_white,1);
	
	//cursor
	var cursorSize = 2;
	//left click
	if (canLeftClick == true){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,leftClickColor,1);}
	if (canLeftClick == false){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
	//ult
	if (canUlt == true){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,ultColor,1);}
	if (canUlt == false){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,c_dkgray,1);}
	//rightclick
	if (canRightClick == true){draw_sprite_part_ext(spr_newCursor1,0,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_teal,1);}
	if (canRightClick == false && instance_exists(obj_pyroPortal) == true){draw_sprite_part_ext(spr_newCursor1,0,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_aqua,1);}
	if (canRightClick == false && instance_exists(obj_pyroPortal) == false){draw_sprite_part_ext(spr_newCursor1,0,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
	//dash
	if (canDash == true){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,dashColor,1);}
	if (canDash == false){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,c_dkgray,1);}
}
#endregion
#region BloodKnight
if (class == Character.BloodKnight)
{
	draw_healthbar(85,47,75+235+maxHp*0.4,60+17,(hp / maxHp) * 100,c_dkgray,c_maroon,c_red,0,false,true);
	//ult
	draw_healthbar(135,45,140-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(140,45,145-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(145,45,150-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(150,45,155-1,110,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(155,45,160-1,105,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
	//leftClick
	draw_healthbar(175,45,180-1,100,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(180,45,185-1,105,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(185,45,190-1,95,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
	//dash
	draw_healthbar(200,70,205-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(205,40,210-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(210,40,215-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(215,40,220-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	draw_healthbar(220,70,225-1,95,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
	//rightCLick
	if(rightClickMode == 1)
	{
		draw_healthbar(235,45,240-1,95,100,c_red,c_red,c_red,3,true,false);
		draw_healthbar(240,45,245-1,105,100,c_red,c_red,c_red,3,true,false);
		draw_healthbar(245,45,250-1,100,100,c_red,c_red,c_red,3,true,false);
	}
	if(rightClickMode == 2)
	{
		draw_healthbar(235,45,240-1,95,100,c_teal,c_teal,c_teal,3,true,false);
		draw_healthbar(240,45,245-1,105,100,c_teal,c_teal,c_teal,3,true,false);
		draw_healthbar(245,45,250-1,100,100,c_teal,c_teal,c_teal,3,true,false);
	}
	if(rightClickMode == 3)
	{
		draw_healthbar(235,45,240-1,95,100,c_lime,c_lime,c_lime,3,true,false);
		draw_healthbar(240,45,245-1,105,100,c_lime,c_lime,c_lime,3,true,false);
		draw_healthbar(245,45,250-1,100,100,c_lime,c_lime,c_lime,3,true,false);
	}
	
	draw_sprite_ext(spr_hpbar,0,50,15,5,5,0,c_white,1);
	
	draw_sprite_ext(spr_player_theBloodKnight,0,65,65,6,6,0,c_white,1);
	
	draw_set_font(fnt_menu_fill);
	draw_text_transformed_color(142,115,"E",0.2,0.2,0,ultColor,ultColor,c_white,c_white,1);
	draw_text_transformed_color(175,115,"M1",0.2,0.2,0,leftClickColor,leftClickColor,c_white,c_white,1);
	draw_text_transformed_color(193,96,"Space",0.175,0.175,0,dashColor,dashColor,c_white,c_white,1);
	draw_text_transformed_color(235,115,"M2",0.2,0.2,0,rightClickColor,rightClickColor,c_white,c_white,1);
	
	//cursor
	var cursorSize = 2;
	//left click
	if (canLeftClick == true){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,leftClickColor,1);}
	if (canLeftClick == false){draw_sprite_part_ext(spr_newCursor1,0,0,20,33,5,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_dkgray,1);}
	//ult
	if (canUlt == true){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,ultColor,1);}
	if (canUlt == false){draw_sprite_part_ext(spr_newCursor1,0,0,0,41,20,device_mouse_x_to_gui(0)-39,device_mouse_y_to_gui(0)-45,cursorSize,cursorSize,c_dkgray,1);}
	//rightclick
	if (rightClickMode == 1){draw_sprite_part_ext(spr_newCursor1,1,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_red,1);}
	if (rightClickMode == 2){draw_sprite_part_ext(spr_newCursor1,1,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_teal,1);}
	if (rightClickMode == 3){draw_sprite_part_ext(spr_newCursor1,1,33,20,8,5,device_mouse_x_to_gui(0)+26,device_mouse_y_to_gui(0)-5,cursorSize,cursorSize,c_lime,1);}
	//dash
	if (canDash == true){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,dashColor,1);}
	if (canDash == false){draw_sprite_part_ext(spr_newCursor1,0,0,25,41,17,device_mouse_x_to_gui(0)-40,device_mouse_y_to_gui(0)+5,cursorSize,cursorSize,c_dkgray,1);}
}
#endregion