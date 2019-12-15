/// @description Insert description here
if (room == rm_menu && audio_is_playing(snd_music_menu) == false && audio_is_playing(snd_music_victory) == false)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_music_menu,Prioity.VeryLow,true);
	}
}
if (room != rm_menu || global.musicOn == false)
{
	audio_stop_sound(snd_music_menu);
}