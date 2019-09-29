/// @description Insert description here
gameMaster.menu = Menues.PlayerSelect;	
gameMaster.bonusHealth = 0;
gameMaster.bonusSpeed = 0;
gameMaster.bonusDash = 0;
gameMaster.bonusDamage = 0;
gameMaster.bonusFirerate = 0;
gameMaster.bonusLifeSteal = 0;
gameMaster.bonusAura = 0;
gameMaster.bonusConjur = 0;
gameMaster.bonusCooldown = 0;
if (gameMaster.theRedWarriorUnlocked == true){with (obj_npc_theRedWarrior){sprite_index = spr_theWarrior_outline_unselected}}
if (gameMaster.theRedWarriorUnlocked == false){with (obj_npc_theRedWarrior){sprite_index = spr_theWarrior_outline_locked}}
if (gameMaster.assassinUnlocked == true){with (obj_npc_theShadow){sprite_index = spr_theAssasin_outline_unselected}}
if (gameMaster.assassinUnlocked == false){with (obj_npc_theShadow){sprite_index = spr_theAssasin_outline_locked}}
if (gameMaster.pyromancerUnlocked == true){with (obj_npc_thePyro){sprite_index = spr_thePyro_outline_unselected}}
if (gameMaster.pyromancerUnlocked == false){with (obj_npc_thePyro){sprite_index = spr_thePyro_outline_locked}}
if (gameMaster.shopkeeperUnlocked == true){with (obj_npc_theShopkeeper){sprite_index = spr_theShopkeeper_outline_unselected}}
if (gameMaster.shopkeeperUnlocked == false){with (obj_npc_theShopkeeper){sprite_index = spr_theShopkeeper_outline_locked}}
if (gameMaster.bloodKnightUnlocked == true){with (obj_npc_theBloodKnight){sprite_index = spr_theBloodKnight_outline_unselected}}
if (gameMaster.bloodKnightUnlocked == false){with (obj_npc_theBloodKnight){sprite_index = spr_theBloodKnight_outline_locked}}
if (gameMaster.rainbowSlimeUnlocked == true){with (obj_npc_theRainbowSlime){sprite_index = spr_rainbowSlime_outline_unselected}}
if (gameMaster.rainbowSlimeUnlocked == false){with (obj_npc_theRainbowSlime){sprite_index = spr_rainbowSlime_outline_locked}}
if (gameMaster.plaugeWalkerUnlocked == true){with (obj_npc_thePluageWalker){sprite_index = spr_plaugeWalker_outline_unSelected}}
if (gameMaster.plaugeWalkerUnlocked == false){with (obj_npc_thePluageWalker){sprite_index = spr_plaugeWalker_outline_locked}}
if (gameMaster.agentOfGodUnlocked == true){with (obj_npc_theAgentOfGod){sprite_index = spr_agentOfGod_outline_unselected}}
if (gameMaster.agentOfGodUnlocked == false){with (obj_npc_theAgentOfGod){sprite_index = spr_agentOfGod_outline_locked}}
if (gameMaster.angelSlayerUnlocked == true){with (obj_npc_theAngelSlayer){sprite_index = spr_angelSlayer_outline_unselected}}
if (gameMaster.angelSlayerUnlocked == false){with (obj_npc_theAngelSlayer){sprite_index = spr_angelSlayer_outline_locked}}
if (gameMaster.gravelingUnlocked == true){with (obj_npc_theGraveling){sprite_index = spr_graveling_outline_unSelected}}
if (gameMaster.gravelingUnlocked == false){with (obj_npc_theGraveling){sprite_index = spr_graveling_outline_locked}}
with(par_npc){spawnSign = true;}
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}