/// @description Insert description here
// You can write your code in this editor
if (gameMaster.menu != Menues.BossSelect)
{
	if (image_alpha > 0){image_alpha -= 1.3/30;}
}
if (gameMaster.menu == Menues.BossSelect)
{
	depth = obj_black_screen.depth-1;
	if (image_alpha < 0.85){image_alpha += 1.1/30;}
	visible = true;
}
if (gameMaster.menu == Menues.BossSelect && hover == true && obj_fightCard_theBloodZombie.x < 34)
{
	depth = obj_fightCard_theBloodZombie.depth-1;
	with(par_scrollingThings)
	{
		x += global.slidingSpeed;	
	}
}
if (keyboard_check(vk_left) && obj_fightCard_theBloodZombie.x < 34 || keyboard_check(ord("A")) && obj_fightCard_theBloodZombie.x < 34)
{
	if (gameMaster.menu == Menues.BossSelect)
	{
		with(par_scrollingThings)
		{
			x += global.slidingSpeed;	
		}
	}
}