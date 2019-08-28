/// @description Insert description here
var darkGray = make_color_rgb(10,10,10);
draw_healthbar(360,800,760,843,(hp/maxHp)*100,darkGray,c_maroon,c_red,1,true,true);
draw_healthbar(845,800,1245,843,(hp/maxHp)*100,darkGray,c_maroon,c_red,0,true,true);
draw_sprite_ext(spr_bossBar,0,800,820,5,5,0,attackColor,1);
if (maxPhase == 1)
{
	if (phase == 1)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
	}
}
if (maxPhase == 2)
{
	if (phase == 1)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
	}
	if (phase == 2)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
	}
}
if (maxPhase == 3)
{
	if (phase == 1)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
	}
	if (phase == 2)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
	}
	if (phase == 3)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
	}
}
if (maxPhase == 4)
{
	if (phase == 1)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_red,1);
	}
	if (phase == 2)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
	}
	if (phase == 3)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
	}
	if (phase == 4)
	{
		draw_sprite_ext(spr_bossLives,0,840,875,3.5,3.5,0,c_red,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*1),875,3.5,3.5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*2),875,3.5,3.5,0,c_dkgray,1);
		draw_sprite_ext(spr_bossLives,0,840+(45*3),875,3.5,3.5,0,c_dkgray,1);
	}
}

