/// @description om clickar
if (gameMaster.menu == Menues.PlayerSelect)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossSelect)
{
	gameMaster.menu = Menues.BossLoot;
}
if (gameMaster.menu == Menues.Settings)
{
	gameMaster.menu = Menues.Main;
}
if (gameMaster.menu == Menues.BossLoot)
{
	gameMaster.menu = Menues.PlayerSelect;
}
if (gameMaster.menu == Menues.BossSlain)
{
	gameMaster.queLeave = true;
	gameMaster.leaveTranistionAlpha = 0;
}
if (gameMaster.menu == Menues.Death)
{
	gameMaster.queLeave = true;
	gameMaster.leaveTranistionAlpha = 0;
}
//sound
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
//save
game_save(global.saveFile);
