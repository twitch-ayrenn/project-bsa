/// @description om clickar
if (gameMaster.menu == Menues.PlayerSelect)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossSelect)
{
	gameMaster.menu = Menues.PlayerSelect;
}
if (gameMaster.menu == Menues.Settings)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossLoot)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossSlain)
{
	room_goto(rm_menu);
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.Death)
{
	room_goto(rm_menu);
	gameMaster.menu = Menues.Main;
}
//sound
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
//save
game_save(global.saveFile);
