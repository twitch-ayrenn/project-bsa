/// @description Insert description here
with (gameMaster)
{
	menu = Menues.BossSelect;	
}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}