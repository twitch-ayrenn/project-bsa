/// @description Insert description here
if (phase == 2)
{
    draw_sprite_ext( sprite_index, image_index, x + irandom_range(-shake, shake), y + irandom_range(-shake, shake), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
if (phase == 3)
{
	draw_sprite_ext( sprite_index, image_index,x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	
	if (gameMaster.chosenBoss == Boss.BloodZombie){draw_sprite_ext(spr_loot_zombieHead, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, alphaUpFade);}
	if (gameMaster.chosenBoss == Boss.FlameWisp){draw_sprite_ext(spr_loot_flamie, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.TheCorrupter){draw_sprite_ext(spr_loot_EdgeOfCorruption, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.FlameGate){draw_sprite_ext(spr_loot_demonHorn, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.WispSisterJulia){draw_sprite_ext(spr_loot_futuristic_soldier, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.AngelSlayerRekZul){draw_sprite_ext(spr_loot_netherPortal, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.DeathKnight){draw_sprite_ext(spr_loot_deathScythe, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.KnightWitchYi){draw_sprite_ext(spr_loot_deathCap, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.AngelKnightOscar){draw_sprite_ext(spr_loot_ultraRapidFireTime, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.DemonLordRekTaar){draw_sprite_ext(spr_loot_implings, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.Gravekeeper){draw_sprite_ext(spr_loot_gravekeeper, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.BloodKnightDavid){draw_sprite_ext(spr_loot_scrollOfBlood, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.StatueOfCorruption){draw_sprite_ext(spr_loot_lootBox, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	if (gameMaster.chosenBoss == Boss.WispSisters){draw_sprite_ext(spr_loot_theLastWish, 0,x-9, y-30+yUpDown+yUpFade, itemScale, itemScale, image_angle, image_blend, image_alpha);}
	
	draw_sprite_ext( sprite_index, 2,x, y+roofY, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
if (phase == 1)
{
	draw_self();	
}