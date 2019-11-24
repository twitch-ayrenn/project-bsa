/// @description Insert description here
if (room == rm_menu && audio_is_playing(snd_amb_menu) == false && audio_is_playing(snd_victorySong) == false)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_amb_menu,Prioity.VeryLow,true);
	}
	audio_stop_sound(snd_amb_graveyard);
}
if (room != rm_menu || global.musicOn == false)
{
	audio_stop_sound(snd_amb_menu);
}