/// @description Insert description here
if(global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}

with (par_challangesButtons)
{
	if (global.assasinAll && global.warriorAll && global.mageAll && global.shopAll && global.bloodAll)
	{
		visible = 1;
		mask_index = sprite_index;
		show = true;
		with (par_graveyardBossButtons)
		{
			visible = 0;
			mask_index = spr_prop_cup;
			show = false;
		}
		with (par_flameBossButtons)
		{
			visible = 0;
			mask_index = spr_prop_cup;
			show = false;
		}
		with (par_soulBossButtons)
		{
			visible = 0;
			mask_index = spr_prop_cup;
			show = false;
		}
		with (par_royalBossButtons)
		{
			visible = 0;
			mask_index = spr_prop_cup;
			show = false;
		}
	}
	
}
