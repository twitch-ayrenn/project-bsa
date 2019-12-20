/// @description Insert description here
//Start Playing
if (room == rm_menu && audio_is_playing(snd_music_menu) == false)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_music_menu,Prioity.VeryLow,true);
		audio_sound_gain(snd_music_menu,1,(0.001)*1000);
	}
}
if (room == rm_arena && gameMaster.menu == Menues.Play)
{
	if (gameMaster.chosenBoss == Boss.BloodZombie)
	{
		if (audio_is_playing(snd_music_undead) == false){audio_play_sound(snd_music_undead,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.FlameWisp)
	{
		if (audio_is_playing(snd_music_wisps) == false){audio_play_sound(snd_music_wisps,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
	{
		if (audio_is_playing(snd_music_corruption) == false){audio_play_sound(snd_music_corruption,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.FlameGate)
	{
		if (audio_is_playing(snd_music_demon) == false){audio_play_sound(snd_music_demon,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.WispSisterJulia)
	{
		if (audio_is_playing(snd_music_wisps) == false){audio_play_sound(snd_music_wisps,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.DeathKnight)
	{
		if (audio_is_playing(snd_music_undead) == false){audio_play_sound(snd_music_undead,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		if (audio_is_playing(snd_music_demon) == false){audio_play_sound(snd_music_demon,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		if (audio_is_playing(snd_music_undead) == false){audio_play_sound(snd_music_undead,Prioity.VeryLow,true);}
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		if (audio_is_playing(snd_music_angel) == false){audio_play_sound(snd_music_angel,Prioity.VeryLow,true);}
	}
}
if (gameMaster.menu != Menues.Play)
{
	audio_stop_sound(snd_music_undead);
	audio_stop_sound(snd_music_wisps);
	audio_stop_sound(snd_music_corruption);
	audio_stop_sound(snd_music_demon);
	audio_stop_sound(snd_music_angel);
}
//Shut down
if (room != rm_menu || global.musicOn == false)
{
	audio_sound_gain(snd_music_menu,0,(1)*1000);
	
}
if (audio_sound_get_gain(snd_music_menu) != 1){audio_stop_sound(snd_music_menu);}