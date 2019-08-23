/// @description Insert description here
// You can write your code in this editor
depth = -1000;
with (gameMaster)
{
	menu = Menues.Settings;	
}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
