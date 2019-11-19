/// @description Insert description here
// You can write your code in this editor
if (global.itemSelected[Boss.TheCorrupter] == true)
{
	if (class == Character.ShadowAssassin || class == Character.BloodKnight)
	{
		draw_sprite_ext(spr_equipment_edgeOfCorruption,0,x,y,0.70,0.70,0,c_white,clamp(edgeOfCorruptionCharge/edgeOfCorruptionChargeTime,0.4,1));
	}
	if (class == Character.Pyromancer )
	{
		if (sprite_index == walkSprite){draw_sprite_ext(spr_equipment_edgeOfCorruption,0,x,y-2,0.65,0.70,0,c_white,clamp(edgeOfCorruptionCharge/edgeOfCorruptionChargeTime,0.4,1));}
		if (sprite_index == idleSprite){draw_sprite_ext(spr_equipment_edgeOfCorruption,0,x,y+8,0.65,0.70,0,c_white,clamp(edgeOfCorruptionCharge/edgeOfCorruptionChargeTime,0.4,1));}
	}
}
draw_self();