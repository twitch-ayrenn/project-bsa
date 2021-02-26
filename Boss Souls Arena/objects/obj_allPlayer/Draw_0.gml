/// @description Insert description here
#region The Corrupter
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
#endregion
if (drawCharge)
{
	draw_sprite_ext(spr_charge,drawChargeFrame,x,y+5,0.75,0.75,0,global.orange,1);	
}
draw_self();
if (shield == true)
{
	draw_sprite_ext(spr_visual_bloodscroll,0,x,y,image_xscale*1.5,image_yscale*1.5,0,c_white,0.45);	
}
