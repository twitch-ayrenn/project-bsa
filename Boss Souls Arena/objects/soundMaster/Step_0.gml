/// @description Insert description here
// You can write your code in this editor
if (room == rm_theGreatCementary)
{
	if (global.ambientOn == true)
	{
		audio_play_sound(snd_amb_graveyard,Prioity.VeryLow,true);
	}
}
if (gameMaster.menu == Menues.Play)
{
	audio_stop_sound(snd_victorySong);
}
if (instance_exists(par_enemy) == true)
{
	audio_stop_sound(snd_amb_graveyard);
}
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
if (instance_exists(obj_boss_theFatZombie) == false)
{
	audio_stop_sound(snd_boss_theFatZombie);
}
if (instance_exists(obj_boss_theWispMother) == false)
{
	audio_stop_sound(snd_boss_theWispMother);
}
if (instance_exists(obj_boss_bloodPrince) == false && instance_exists(obj_ads_bloodBatBig) == false && gameMaster.menu != Menues.Play)
{
	audio_stop_sound(snd_boss_theBloodPrince);
}
if (instance_exists(obj_boss_theOrangeWitch) == false && instance_exists(obj_boss_theYellowWitch) == false && instance_exists(obj_boss_theGreenWitch) == false)
{
	audio_stop_sound(snd_boss_theMadWitches);
}
if (instance_exists(obj_boss_theGraveKeeper) == false)
{
	audio_stop_sound(snd_boss_theGraveKeeper);
}
if (instance_exists(par_infernalWisp) == false)
{
	audio_stop_sound(snd_boss_theInfernalWisp);
}
if (instance_exists(obj_boss_theFlameGate) == false)
{
	audio_stop_sound(snd_boss_theFlameGate);
}
if (instance_exists(obj_boss_theSoulWisp) == false)
{
	audio_stop_sound(snd_boss_theSoulWisp);
}
if (instance_exists(obj_boss_deathGeneralZarodil) == false)
{
	audio_stop_sound(snd_boss_deathGeneralZarodil);
}
if (instance_exists(obj_boss_deathKingZarok) == false && instance_exists(obj_boss_deathQueenZeria) == false)
{
	audio_stop_sound(snd_boss_royals);
}
if (instance_exists(obj_ch_dl_deathGeneralZarodil) == false && instance_exists(obj_ch_dl_deathQueenZeria) == false && instance_exists(obj_ch_dl_deathKingZarok) == false)
{
	audio_stop_sound(snd_boss_lastFight);
}