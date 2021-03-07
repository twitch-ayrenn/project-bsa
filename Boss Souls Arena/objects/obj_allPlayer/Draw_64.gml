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
	draw_healthbar(350,810,760,838,(B.hp/B.maxHp)*100,darkGray,c_maroon,c_red,1,true,true);
	draw_healthbar(845,810,1240-1,838,(B.hp/B.maxHp)*100,darkGray,c_maroon,c_red,0,true,true);
	var bossBar = 0;
	if (global.colorBlindIcons == true)
	{
		if (attack == Atks.NormalShot){bossBar = 1;}
		if (attack == Atks.CircleAttack){bossBar = 2;}
		if (attack == Atks.GooSpawn){bossBar = 3;}
		if (attack == Atks.ConeAttack){bossBar = 4;}
		if (attack == Atks.OneShotAttack){bossBar = 5;}
		if (attack == Atks.ChaseAttack){bossBar = 6;}
		if (attack == Atks.RapidFire){bossBar = 7;}
		if (attack == Atks.BeamAttack){bossBar = 8;}
		if (attack == Atks.TeleportAttack){bossBar = 9;}
		if (attack == Atks.ZoneAttack){bossBar = 10;}
	}
	draw_sprite_ext(spr_bossBar211,bossBar,800,830,5,5,0,B.attackColor,1);
	
	if (B.maxPhase == 1)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
		}
	}
	if (B.maxPhase == 2)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_dkgray,1);
		}
	}
	if (B.maxPhase == 3)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 3)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
		}
	}
	if (B.maxPhase == 4)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 3)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 4)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
		}
	}
	if (B.maxPhase == 5 || B.maxPhase == 6)
	{
		if (B.phase == 1)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_red,1);
		}
		if (B.phase == 2)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 3)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 4)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_dkgray,1);
		}
		if (B.phase == 5)
		{
			draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
			draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_dkgray,1);
		}
	}
	if (B.phase == 6 && gameMaster.chosenBoss == Boss.ArenaKing)
	{
		draw_sprite_ext(spr_bossPhases,0,860,860,5,5,0,c_red,1);
		draw_sprite_ext(spr_bossPhases,0,860+(45*1),860,5,5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossPhases,0,860+(45*2),860,5,5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossPhases,0,860+(45*3),860,5,5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossPhases,0,860+(45*4),860,5,5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossPhases,0,860+(45*5),860,5,5,0,c_dkgray,1);
	}
}
#endregion
#region Player Ui
var uiHP_X = 45;
var uiHp_Y = 45;
var uiHP_Thick = 15;
draw_set_alpha(0.75);
draw_healthbar(uiHP_X,uiHp_Y,uiHP_X+200+maxHp*1,uiHp_Y+uiHP_Thick,100,c_dkgray,c_dkgray,c_dkgray,0,false,true);
draw_set_alpha(1);
draw_healthbar(uiHP_X,uiHp_Y,uiHP_X+200+maxHp*1,uiHp_Y+uiHP_Thick,(hp / maxHp) * 100,c_dkgray,c_maroon,c_red,0,false,true);
//ult
draw_healthbar(uiHP_X,uiHp_Y+30,uiHP_X+60-1,uiHp_Y+90-1,(ultCooldownLeft / ultCooldown) * 100,ultColor,c_dkgray,c_dkgray,3,true,false);
//leftClick
draw_healthbar(uiHP_X+80,uiHp_Y+30,uiHP_X+125-1,uiHp_Y+75-1,(leftClickCooldownLeft / leftClickCooldown) * 100,leftClickColor,c_dkgray,c_dkgray,3,true,false);
//dash
draw_healthbar(uiHP_X+145,uiHp_Y+30,uiHP_X+220,uiHp_Y+60,(dashCooldownLeft / dashCooldown) * 100,dashColor,c_dkgray,c_dkgray,3,true,false);
//rightCLick
draw_healthbar(uiHP_X+240,uiHp_Y+30,uiHP_X+285-1,uiHp_Y+75-1,(rightClickCooldownLeft / rightClickCooldown) * 100,rightClickColor,c_dkgray,c_dkgray,3,true,false);

draw_sprite_ext(spr_healthBarNew221,0,uiHP_X-5,uiHp_Y-5,5,5,0,c_white,1);

draw_set_halign(fa_center);
draw_set_font(fnt_NewNormalText);
draw_text_transformed_color(uiHP_X+044+10+2.5,87+13+22.5,"E",0.20*0.35,0.20*0.35,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_color(uiHP_X+105+15,84+13+12.5,"M1",0.15*0.35,0.15*0.35,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_color(uiHP_X+164+45+1,81+13+5,"Space",0.12*0.35,0.12*0.35,0,c_white,c_white,c_white,c_white,1);
draw_text_transformed_color(uiHP_X+224+55,84+13+12.5,"M2",0.15*0.35,0.15*0.35,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left);


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
if (gameMaster.chosenClass == Character.Pyromancer && drawCharge)
{
	draw_healthbar(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)+40,device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)+50,(charge/maxCharge)*100,c_black,c_orange,global.orange,0,true,true);
}
//Low Health Vinjett
if (hp < 0.65*maxHp)
{
	draw_sprite_ext(spr_lowHealthVinjet,0,0,0,4.2,4.2,0,c_red,1.2-(hp/maxHp));
}
draw_sprite_ext(spr_lowHealthVinjet,0,0,0,4.2,4.2,0,c_red,hitVinjetAlpha);
hitVinjetAlpha -= 0.1;
#endregion