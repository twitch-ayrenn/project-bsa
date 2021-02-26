var doOnce = true;
if (menu == Menues.Main)
{
	if (global.camSize == 4 && doOnce){global.camSize = 2.5; doOnce = false;}
	if (global.camSize == 2.5 && doOnce){global.camSize = 2.5; doOnce = false;}
}