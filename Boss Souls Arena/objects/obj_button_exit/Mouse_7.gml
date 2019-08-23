/// @description Insert description here
// You can write your code in this editor
game_save(global.saveFile);
exitColor = c_maroon;
exitSize = 1;
backColor = c_maroon;
backSize = 1;
game_end();
//sound
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
//