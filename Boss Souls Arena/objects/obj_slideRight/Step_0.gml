/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu != Menues.BossSelect)
{
	if (image_alpha > 0){image_alpha -= 2/30;}
}
if (gameMaster.menu == Menues.BossSelect)
{
	depth = obj_black_screen.depth-1;
	if (image_alpha < 1){image_alpha += 1.5/30;}
	visible = true;
}
if (gameMaster.menu == Menues.BossSelect && hover == true && obj_fightCard_theArenaKing.x > 136)
{
	depth = obj_fightCard_theBloodZombie.depth-1;
	with(par_scrollingThings)
	{
		x -= global.slidingSpeed;	
	}
}
if (keyboard_check(vk_right) && obj_fightCard_theArenaKing.x > 136 || keyboard_check(ord("D")) && obj_fightCard_theArenaKing.x > 136)
{
	if (gameMaster.menu == Menues.BossSelect)
	{
		with(par_scrollingThings)
		{
			x -= global.slidingSpeed;	
		}
	}
}