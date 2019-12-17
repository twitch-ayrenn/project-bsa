/// @description Insert description here
//Start Playing
if (room == rm_menu && audio_is_playing(snd_music_menu) == false && audio_is_playing(snd_music_victory) == false)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_music_menu,Prioity.VeryLow,true);
	}
}
if (room == rm_arena)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		if (audio_is_playing(snd_music_undead) == false)
		{
			audio_sound_gain(snd_music_undead,1,(0.5)*1000);
		}
	}
}
//Shut down
if (room != rm_menu || global.musicOn == false)
{
	audio_sound_gain(snd_music_menu,0,(1)*1000);
}