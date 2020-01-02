/// @description Insert description here
//Start Playing
if (room == rm_menu && global.musicOn == true && global.playMenuMusic == true && !audio_is_playing(snd_music_victory))
{
	global.playMenuMusic = false;
	audio_stop_sound(snd_music_menu);
	audio_play_sound(snd_music_menu,10,true);
	audio_sound_gain(snd_music_menu,0,0);
    audio_sound_gain(snd_music_menu,global.musicVolume,(15)*1000);
}
if (room == rm_arena && gameMaster.menu == Menues.Play && global.musicOn == true && global.playBossMusic == true)
{
	global.playBossMusic = false;
	if (audio_is_playing(snd_music_victory) == true)
	{
		audio_sound_gain(snd_music_victory,0,(0.25)*1000);
	}
	if (gameMaster.chosenBoss == Boss.BloodZombie || gameMaster.chosenBoss == Boss.DeathKnight || gameMaster.chosenBoss == Boss.KnightWitchYi)
	{
		audio_stop_sound(snd_music_undead);
		audio_play_sound(snd_music_undead,10,true);
		audio_sound_gain(snd_music_undead,0,0);
		audio_sound_gain(snd_music_undead,global.musicVolume,(15)*1000);
	}
	if (gameMaster.chosenBoss == Boss.FlameWisp || gameMaster.chosenBoss == Boss.WispSisterJulia)
	{
		audio_stop_sound(snd_music_wisps);
		audio_play_sound(snd_music_wisps,10,true);
		audio_sound_gain(snd_music_wisps,0,0);
		audio_sound_gain(snd_music_wisps,global.musicVolume,(15)*1000);
	}
	if (gameMaster.chosenBoss == Boss.TheCorrupter)
	{
		audio_stop_sound(snd_music_corruption);
		audio_play_sound(snd_music_corruption,10,true);
		audio_sound_gain(snd_music_corruption,0,0);
		audio_sound_gain(snd_music_corruption,global.musicVolume,(15)*1000);
	}
	if (gameMaster.chosenBoss == Boss.FlameGate || gameMaster.chosenBoss == Boss.AngelSlayerRekZul)
	{
		audio_stop_sound(snd_music_demon);
		audio_play_sound(snd_music_demon,10,true);
		audio_sound_gain(snd_music_demon,0,0);
		audio_sound_gain(snd_music_demon,global.musicVolume,(15)*1000);
	}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar)
	{
		audio_stop_sound(snd_music_angel);
		audio_play_sound(snd_music_angel,10,true);
		audio_sound_gain(snd_music_angel,0,0);
		audio_sound_gain(snd_music_angel,global.musicVolume,(15)*1000);
	}
}
if (gameMaster.menu != Menues.Play)
{
	if (audio_sound_get_gain(snd_music_undead) != 0){audio_sound_gain(snd_music_undead,0,(0.25)*1000)}
	if (audio_sound_get_gain(snd_music_wisps) != 0){audio_sound_gain(snd_music_wisps,0,(0.25)*1000)}
	if (audio_sound_get_gain(snd_music_corruption) != 0){audio_sound_gain(snd_music_corruption,0,(0.25)*1000)}
	if (audio_sound_get_gain(snd_music_demon) != 0){audio_sound_gain(snd_music_demon,0,(0.25)*1000)}
	if (audio_sound_get_gain(snd_music_angel) != 0){audio_sound_gain(snd_music_angel,0,(0.25)*1000)}
}
//Shut down
if (room != rm_menu || global.musicOn == false)
{
	audio_sound_gain(snd_music_menu,0,(0.25)*1000);	
}
if (audio_sound_get_gain(snd_music_victory) == 0){audio_stop_sound(snd_music_victory);}