/// @description Insert description here
// You can write your code in this editor
if (turnBackGroundWhite == true)
{
	turnBackGroundWhite = false;

	alarm[0] = (0.5)*30;
}
if (skip == true)
{
	if (keyboard_check(vk_anykey) || mouse_check_button_released(mb_any))
	{
		audio_stop_sound(snd_startgame);
		gameMaster.menu = Menues.Main;
		room_goto(rm_menu);
	}
}