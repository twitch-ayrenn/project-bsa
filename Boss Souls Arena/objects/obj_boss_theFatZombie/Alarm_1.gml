/// @description Insert description here
// You can write your code in this editor
if (fase == 1)
{
	var angle = 0;
	repeat(8)
	{
		var blodKlot = instance_create_depth(x,y,1,obj_klot);
		blodKlot.direction = angle;
		blodKlot.speed = 2 + fase1Speed;
		blodKlot.color = c_maroon;
		blodKlot.damage = fase1Damage;
		blodKlot.image_xscale = 0.75;
		blodKlot.image_yscale = 0.75;
		angle += 360/8;
	}	
}
if (fase == 2)
{
	var angle = 0;
	repeat(8)
	{
		var blodKlot = instance_create_depth(x,y,1,obj_klot);
		blodKlot.direction = angle;
		blodKlot.speed = 2 + fase2Speed;
		blodKlot.color = c_lime;
		blodKlot.damage = fase2Damage;
		blodKlot.image_xscale = 0.9;
		blodKlot.image_yscale = 0.9;
		angle += 360/8;
	}		
}
fase1DoCirkle = true;
fase2DoCirkle = true;