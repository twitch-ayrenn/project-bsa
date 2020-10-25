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
#region crown
if (global.itemSelected[Boss.ArenaKing] == true)
{
	if (class == Character.ShadowAssassin && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_shadow_idle,image_index,x,y-3,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.ShadowAssassin && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_shadow_walking,image_index,x,y-5,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.Pyromancer && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_pyro_idle,image_index,x,y+7,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.Pyromancer && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_pyro_walking,image_index,x,y-6,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.AngelSlayer && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_angelSlayer_idle,image_index,x,y-5,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.AngelSlayer && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_angelSlayer_walking,image_index,x,y-6,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.PlaugeWalker && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_plague_idle,image_index,x,y-6,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.PlaugeWalker && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_plague_walking,image_index,x,y-6,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.AgentOfGod && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_agent_idle,image_index,x,y-4,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.AgentOfGod && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_agent_walking,image_index,x,y-4,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.Graveling){draw_sprite_ext(spr_visual_crown_graveling,image_index,x,y-4,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.BloodKnight && sprite_index == idleSprite){draw_sprite_ext(spr_visual_crown_blood_idle,image_index,x,y-5,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
	if (class == Character.BloodKnight && sprite_index == walkSprite){draw_sprite_ext(spr_visual_crown_blood_walking,image_index,x,y-5,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
}
#endregion
if (shield == true)
{
	draw_sprite_ext(spr_visual_bloodscroll,0,x,y,image_xscale*1.5,image_yscale*1.5,0,c_white,0.45);	
}
