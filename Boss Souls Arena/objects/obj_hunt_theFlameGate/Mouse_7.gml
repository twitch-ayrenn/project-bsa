/// @description Insert description here
// You can write your code in this editor
if (hoverOver == true)
{
	if (global.soundOn == true)
	{
		audio_play_sound(snd_buttonClick,Prioity.Normal,false);
	}
	room_goto(rm_theGreatCementary);
	gameMaster.menu = Menues.Play;
	gameMaster.chosenBoss = Bosses.The_Flame_Gate;
}
