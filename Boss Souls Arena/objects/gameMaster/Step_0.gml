/// @description code
depth = -1000;
//mennues
if (room == rm_beforeGame)
{
	if (global.musicOn == true)
	{
		audio_play_sound(snd_startgame,Prioity.VeryHigh,true);
	}
}
//this code bellow spawns choose buttons on charaters
if (menu == Menues.PlayerSelect)
{
	
}
//game spawn
if (menu == Menues.Play)
{
	//player Spawn
	if (room == rm_theGraveYard)
	{
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Warrior)
		{
			var warrior = instance_create_depth(1208,560,1,obj_player_warrior);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Mage)
		{
			var mage = instance_create_depth(1208,560,1,obj_player_mage);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Assasin)
		{
			var assasin = instance_create_depth(1208,560,1,obj_player_assasin);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Shopkeeper)
		{
			var shopkeeper = instance_create_depth(1208,560,1,obj_player_shopkeeper);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_BloodKnight)
		{
			var shopkeeper = instance_create_depth(1208,560,1,obj_player_theBloodKnight);
		}
	}
	if (room == rm_theGreatCementary)
	{
		if (chosenBoss == Bosses.The_Fat_Zombie)
		{
			var tpX = 2552;	var tpY = 1544;
		}
		if (chosenBoss == Bosses.The_Wisp_Mother ||chosenBoss == Bosses.The_Blood_Prince)
		{
			var tpX = 1535;	var tpY = 1928;
		}
		if (chosenBoss == Bosses.The_GraveKeeper ||chosenBoss ==  Bosses.The_Fat_Zombie && global.hasSlainFatZombiePhase2 == true || chosenBoss == Bosses.The_Mad_Witches)
		{
			var tpX = 2216;	var tpY = 1851;
		}
		if (chosenBoss == Bosses.The_Infernal_Wisp|| chosenBoss == Bosses.The_Flame_Gate || chosenBoss == Bosses.fall_Of_Flames)
		{
			var tpX = 2025;	var tpY = 2988;
		}
		if (chosenBoss == Bosses.The_Soul_Wisp|| chosenBoss == Bosses.The_Soul_Guards)
		{
			var tpX = 1856;	var tpY = 944;
		}
		if (chosenBoss == Bosses.Death_General_Zarodil || chosenBoss == Bosses.Death_King_Zarok || chosenBoss == Bosses.Death_Queen_Zeria)
		{
			var tpX = 1000;	var tpY = 1712;
		}
		if (chosenBoss == Bosses.Death_Lords || chosenBoss == Bosses.The_Fat_Zombie_4 || chosenBoss = Bosses.Dead_Army)
		{
			var tpX = 1000;	var tpY = 1712;
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Warrior)
		{
			var warrior = instance_create_depth(tpX,tpY,1,obj_player_warrior);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Mage)
		{
			var mage = instance_create_depth(tpX,tpY,1,obj_player_mage);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Assasin)
		{
			var assasin = instance_create_depth(tpX,tpY,1,obj_player_assasin);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_Shopkeeper)
		{
			var shopkeeper = instance_create_depth(tpX,tpY,1,obj_player_shopkeeper);
		}
		if (instance_exists(obj_player) == false && chosenClass == Class.The_BloodKnight)
		{
			var shopkeeper = instance_create_depth(tpX,tpY,1,obj_player_theBloodKnight);
		}
	}
	//if death happens
	if (obj_allPlayer.hp <= 0)
	{
		menu = Menues.Death;
		global.dD -= 0.08;
		var deadX = obj_player.x;
		var deadY = obj_player.y;
		var deadSize = obj_player.image_xscale;
		var deadSprite = 0;
		if (obj_player.class == Class.The_Assasin){deadSprite = spr_player_theAssasin_dead;}
		if (obj_player.class == Class.The_Warrior){deadSprite = spr_player_theWarrior_death;}
		if (obj_player.class == Class.The_Mage){deadSprite = spr_player_theMage_death;}
		if (obj_player.class == Class.The_Shopkeeper){deadSprite = spr_player_theShopkeeper_death;}
		if (obj_player.class == Class.The_BloodKnight){deadSprite = spr_player_theBloodKnight_death;}
		if (obj_player.class == Class.The_GuardianWisp){deadSprite = spr_item_guardianWisp;}
		instance_destroy(par_cursor);
		instance_destroy(par_items);
		instance_create_depth(mouse_x,mouse_y,-y,obj_cursor_menu);
		instance_destroy(obj_player);
		var deadPlayer = instance_create_depth(deadX,deadY,-y,obj_deadPlayer);
		deadPlayer.sprite_index = deadSprite;
		deadPlayer.image_xscale = abs(deadSize);
		deadPlayer.image_yscale = abs(deadSize);
		if (deadSprite == spr_player_theAssasin_dead){deadPlayer.image_alpha = 0.65;}
	}
}
//proggresion
if (falseAllBosses == true)
{
	falseAllBosses = false;
	global.hasSlainFatZombiePhase2 = false;
	global.hasSlainFatZombiePhase3 = false;
	global.hasSlainTheWispMother = false;
	global.hasSlainTheBloodPrince = false;
	global.hasSlainTheMadWitches = false;
	global.hasSlainTheGraveKeeper = false;
	global.hasSlainTheInfernalWisp = false;
	global.hasSlainTheFlameGate = false;
	global.hasSlainTheSoulWisp = false;
	global.hasSlainTheSoulGuards = false;
	global.hasSlainDeathGeneralZarodil = false;
	global.hasSlainDeathQueenZeria = false;
	global.hasSlainDeathKingZarok = false;
}
//visable
if (global.hasSlainFatZombiePhase2 == true)
{
	with(obj_bossLoot_bloodMask){visible = true;}
	with(obj_bossLoot_poisonJar){visible = true;}

}
if (global.hasSlainFatZombiePhase3 == true)
{	
	with(obj_bossLoot_bloodJar){visible = true;}
}
if (global.hasSlainTheWispMother == true)
{
	with(obj_bossLoot_greenWisp){visible = true;}
	with(obj_bossLoot_redWisp){visible = true;}
	with(obj_bossLoot_prupleWisp){visible = true;}
}
if (global.hasSlainTheBloodPrince == true)
{
	with(obj_bossLoot_vampireCloak){visible = true;}
	with(obj_bossLoot_vampireNecklace){visible = true;}
	with(obj_bossLoot_crown){visible = true;}
}
if (global.hasSlainTheMadWitches == true)
{
	with(obj_bossLoot_eliseHead){visible = true;}
	with(obj_bossLoot_anniesDeathCap){visible = true;}
	with(obj_bossLoot_scarletsPendant){visible = true;}
}
if (global.hasSlainTheGraveKeeper == true)
{
	with(obj_bossLoot_keeperCloak){visible = true;}
	with(obj_bossLoot_keeperScythe){visible = true;}
	with(obj_bossLoot_batJar){visible = true;}
}
if (global.hasSlainTheInfernalWisp == true)
{
	with(obj_bossLoot_flameConsumerWisp){visible = true;}
	with(obj_bossLoot_guardianWisp){visible = true;}
	with(obj_bossLoot_speedAsh){visible = true;}
}
if (global.hasSlainTheFlameGate == true)
{
	with(obj_bossLoot_bookOfPheonix){visible = true;}
	with(obj_bossLoot_bookOfPortals){visible = true;}
	with(obj_bossLoot_bookOfSacrefices){visible = true;}
}
if (global.hasSlainTheFlameGate == true)
{
	with(obj_bossLoot_bookOfPheonix){visible = true;}
	with(obj_bossLoot_bookOfPortals){visible = true;}
	with(obj_bossLoot_bookOfSacrefices){visible = true;}
}
if (global.hasSlainTheSoulWisp == true)
{
	with(obj_bossLoot_lifeWisp){visible = true;}
	with(obj_bossLoot_bookOfHealing){visible = true;}
	with(obj_bossLoot_wispSoul){visible = true;}
}
if (global.hasSlainTheSoulGuards == true)
{
	with(obj_bossLoot_devilsFeather){visible = true;}
	with(obj_bossLoot_angelsFeather){visible = true;}
	with(obj_bossLoot_soulSword){visible = true;}
}
if (global.hasSlainDeathGeneralZarodil == true)
{
	with(obj_bossLoot_bladeOfPower){visible = true;}
}
if (global.hasSlainDeathQueenZeria == true)
{
	with(obj_bossLoot_queensHead){visible = true;}
}
if (global.hasSlainDeathKingZarok == true)
{
	with(obj_bossLoot_kingsHead){visible = true;}
}
//////items
//the entrance
//zombie
if (global.selectedZombieItem == ZombieItems.BloodJar)
{
	global.bloodJarHpBoost = 1.05;
	//reset
	global.poisonJarDamageBoost = 1;
	global.poisonJarHpBoost = 1;
	global.bloodMaskDamageBoost = 1;
}
if (global.selectedZombieItem == ZombieItems.BloodMask)
{
	global.bloodMaskDamageBoost = 1.15;
	if (instance_exists(obj_item_zobmieHead) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_zobmieHead);
	}
	//reset
	global.bloodJarHpBoost = 1;
	global.poisonJarDamageBoost = 1;
	global.poisonJarHpBoost = 1;
}
if (global.selectedZombieItem == ZombieItems.PoisonJar)
{
	if (instance_exists(obj_item_poisonGrounds) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		var poisonGround = instance_create_depth(x,y,1,obj_item_poisonGrounds);
		poisonGround.image_xscale = 1*(0.45 + obj_player.maxHp*0.0006);
		poisonGround.image_yscale = poisonGround.image_xscale;
	}
	global.poisonJarDamageBoost = 1.05;
	global.poisonJarHpBoost = 1.05;
	//reset
	global.bloodJarHpBoost = 1;
	global.bloodMaskDamageBoost = 1;
}
//wisp
if (global.selectedWispItem == WispBossItems.GreenWispBottle)
{
	global.GreenWispHpCostReduction = 0.8;
	if (instance_exists(obj_item_greenWisp) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_greenWisp);
	}
	//reset
	global.PurpleWispHpBoost = 1;
	global.RedWispDamageBoost = 1;
	global.redWispRangeBoost =  1;
}
if (global.selectedWispItem == WispBossItems.PurpleWispBottle)
{
	global.PurpleWispHpBoost = 1.2;	
	if (instance_exists(obj_item_purpleWisp) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_purpleWisp);
	}
	//reset
	global.GreenWispHpCostReduction = 1;
	global.RedWispDamageBoost = 1;
	global.redWispRangeBoost =  1;
}
if (global.selectedWispItem == WispBossItems.RedWispBottle)
{
	global.RedWispDamageBoost = 1.2;
	global.redWispRangeBoost =  1.3;
	if (instance_exists(obj_item_redWisp) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_redWisp);
	}
	//reset
	global.PurpleWispHpBoost = 1;
	global.GreenWispHpCostReduction = 1;
}
//vampireItems
if (global.selectedVampireItem == VampireBossItems.VampireCloak)
{
	global.vampireCloakDamageBoost = 1.15;
	global.vampireCloakProjectileBoost = 1.2;
	//reset
	global.vampireNecklaceDamageBoost = 1;
	global.vampireCrownHpBoost = 1;
	global.vampireCrownExtraOrb = 1;
}
if (global.selectedVampireItem == VampireBossItems.VampireCrown)
{
	global.vampireCrownHpBoost = 1.2;
	global.vampireCrownExtraOrb = 1.2;

	//reset
	global.vampireCloakDamageBoost = 1;
	global.vampireCloakProjectileBoost = 1;
	global.vampireNecklaceDamageBoost = 1;
}
if (global.selectedVampireItem == VampireBossItems.VampireBloodNecklace)
{
	global.vampireNecklaceDamageBoost = 1.3;
	//reset
	global.vampireCloakDamageBoost = 1;
	global.vampireCloakProjectileBoost = 1;
	global.vampireCrownHpBoost = 1;
	global.vampireCrownExtraOrb = 1;
}
//witches
if (global.selectedWitchItem == WitchBossItems.EliseHead)
{
	global.eliseDamageBoost = 1.20;
	if (instance_exists(obj_item_eliseHead) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_eliseHead);
	}
	//reset
	global.scarletsHpBoost = 1;
	global.scarletsProjectileBoost = 1;
	global.deathCapHpBoost = 1;
	global.deathCapDamageBoost = 1;
}
if (global.selectedWitchItem == WitchBossItems.AnniesDeathCap)
{
	global.deathCapHpBoost = 1.10;
	global.deathCapDamageBoost = 1.10;
	if (instance_exists(obj_item_anniesDeathCap) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_anniesDeathCap);
	}
	//reset
	global.eliseDamageBoost = 1;
	global.scarletsHpBoost = 1;
	global.scarletsProjectileBoost = 1;
}
if (global.selectedWitchItem == WitchBossItems.ScarletsPendant)
{
	global.scarletsHpBoost = 1.3;
	global.scarletsProjectileBoost = 1.1;
	if (instance_exists(obj_item_scarletsPendant) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_scarletsPendant);
	}
	//reset
	global.eliseDamageBoost = 1;
	global.deathCapHpBoost = 1;
	global.deathCapDamageBoost = 1;
}
//keeper
if (global.selectedKeeperItem == KeeperBossItems.KeeperCloak)
{
	global.cloakDamageBoost = 1.6;
	global.cloakHpBoost = 0.7;
	//reset
	global.batDamgeBoost = 1;
	global.batHpBoost = 1;
	global.scytheDamageBoost = 1;
}
if (global.selectedKeeperItem == KeeperBossItems.KeeperBatCarrier)
{
	if (instance_exists(obj_item_batCarrier) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_batCarrier);
	}
	global.batDamgeBoost = 1.1;
	global.batHpBoost = 1.15;
	//reset
	global.cloakDamageBoost = 1;
	global.cloakHpBoost = 1;
	global.scytheDamageBoost = 1;
}
if (global.selectedKeeperItem == KeeperBossItems.KeeperScythe)
{
	if (instance_exists(obj_item_scythe) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_scythe);
	}
	global.scytheDamageBoost = 1.2;
	//reset
	global.cloakDamageBoost = 1;
	global.cloakHpBoost = 1;
	global.batDamgeBoost = 1;
	global.batHpBoost = 1;
}
////grave of flames
//infernal wisp
if (global.selectedInfernalItems == InfernalBossItems.Flame_Consumer_Wisp)
{
	if (instance_exists(obj_item_flameWisp) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_flameWisp);
	}
	global.flameConsumerDamageReduction = 0.9;
	//reset
	global.guardianDamageReduction = 1;
	global.guardianHpReduction = 1;
	global.speedAshHpBoost = 1;
	global.speedAshDashIncrease = 1;
	global.speedAshDamageBoost = 1;
}
if (global.selectedInfernalItems == InfernalBossItems.Guardian_Wisp)
{
	global.guardianDamageReduction = 0.9;
	global.guardianHpReduction = 0.9;
	//reset
	global.flameConsumerDamageReduction = 1;
	global.speedAshHpBoost = 1;
	global.speedAshDashIncrease = 1;
	global.speedAshDamageBoost = 1;
}
if (global.selectedInfernalItems == InfernalBossItems.Speed_Ash)
{
	global.speedAshHpBoost = 1.25;
	global.speedAshDashIncrease = 1.2;
	global.speedAshDamageBoost = 1.1;
	//reset
	global.guardianDamageReduction = 1;
	global.guardianHpReduction = 1;
	global.flameConsumerDamageReduction = 1;
}
//flamegate
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Pheonixes)
{
	global.pheonixDamageBoost = 1.35;
	//reset
	global.sacreficeDamageReduction = 1;
	global.sacreficeHpReduction = 1;
	global.sacreficeSpeedBoost = 0;
	global.portalDamageBoost = 1;
	global.portalHpBoost = 1;
	global.portalSummoningBoost = 1;
}
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Portals)
{
	global.portalDamageBoost = 1.1;
	global.portalHpBoost = 1.2;
	global.portalSummoningBoost = 1.5;
	//reset
	global.sacreficeDamageReduction = 1;
	global.sacreficeHpReduction = 1;
	global.sacreficeSpeedBoost = 0;
	global.pheonixDamageBoost = 1;
}
if (global.selectedFlameGateItems == FlameGateItems.Book_Of_Sacrefices)
{
	global.sacreficeDamageReduction = 0.95;
	global.sacreficeHpReduction = 0.95;
	global.sacreficeSpeedBoost = 1;
	//reset
	global.portalDamageBoost = 1;
	global.portalHpBoost = 1;
	global.portalSummoningBoost = 1;
	global.pheonixDamageBoost = 1;
}
//SoulWisp
if (global.selectedSoulWispItem == SoulWispItems.Life_Wisp)
{
	if (instance_exists(obj_item_lifeWisp) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_lifeWisp);
	}
	global.lifeWispExtraOrb = 1.2;
	global.lifeWispHpReduction = 0.85;
	global.lifeWispSizeBoost = 0.05;
	//reset
	global.bookOfHealingDamageReduction = 1;
	global.bookOfHealingHpCostReduction = 1;
	global.bookOfHealingHealBoost = 1;
	global.bookOfHealingHpCostReduction = 1;
	global.wispSoulDamageBoost = 1;
	global.wispSoulSummoningBoost = 1;
}
if (global.selectedSoulWispItem == SoulWispItems.Book_Of_Healing)
{
	global.bookOfHealingDamageReduction = 0.90;
	global.bookOfHealingHpCostReduction = 0.90;
	global.bookOfHealingHealBoost = 1.25;
	global.bookOfHealingHpCostReduction = 0.8;
	//reset
	global.lifeWispExtraOrb = 1;
	global.lifeWispHpReduction = 1;
	global.lifeWispSizeBoost = 1;
	global.wispSoulDamageBoost = 1;
	global.wispSoulSummoningBoost = 1;
}
if (global.selectedSoulWispItem == SoulWispItems.Wisp_Soul)
{
	if (instance_exists(obj_item_wispSoul) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_wispSoul);
	}
	global.wispSoulDamageBoost = 1.4;
	global.wispSoulSummoningBoost = 1.25;
	//reset
	global.lifeWispExtraOrb = 1;
	global.lifeWispHpReduction = 1;
	global.lifeWispSizeBoost = 1;
	global.bookOfHealingDamageReduction = 1;
	global.bookOfHealingHpCostReduction = 1;
	global.bookOfHealingHealBoost = 1;
	global.bookOfHealingHpCostReduction = 1;
}
//soul guards
if (global.selectedSoulGuardsItem == SoulGuardsItem.AngelsFeather)
{
	if (instance_exists(obj_angelAttackRange1) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_angelAttackRange1);
	}
	global.angelsFeatherHpBoost = 1.45;
	global.angelsFeatherRangeBoost = 1.15;
	//reset
	global.devilsFeatherDamageBoost = 1;
	global.devilsFeatherHpBoost = 1;
	global.soulSwordDamageBoost = 1;
	global.soulSwordDashLength = 1;
}
if (global.selectedSoulGuardsItem == SoulGuardsItem.DevilsFeather)
{
	global.devilsFeatherDamageBoost = 1.3;
	global.devilsFeatherHpBoost = 1.3;
	//reset
	global.angelsFeatherHpBoost = 1;
	global.angelsFeatherRangeBoost = 1;
	global.soulSwordDamageBoost = 1;
	global.soulSwordDashLength = 1;
}
if (global.selectedSoulGuardsItem == SoulGuardsItem.SoulSword)
{
	global.soulSwordDamageBoost = 1.45;
	global.soulSwordDashLength = 1.25;
	//reset
	global.angelsFeatherHpBoost = 1;
	global.angelsFeatherRangeBoost = 1;
	global.devilsFeatherDamageBoost = 1;
	global.devilsFeatherHpBoost = 1;
}
//death Lords
if (global.selectedDeathLordItems == Artifacts.BladeOfPower)
{
	if (instance_exists(obj_item_bladeOfPower) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(x,y,1,obj_item_bladeOfPower);
	}
	global.bladeDamageBoost = 1.5;
	global.bladeSpeedBoost = 1.4;
	global.bladeSpeedFlatBoost = 1;
	global.bladeSpeedDamage = 0;
	//reset
	global.kingsHeadHpBoost = 1;
	global.kingsHeadDamageBoost = 1;
	global.kingsHeadOrbBoost = 1;
	global.kingsHeadSummongingBoost = 1;
	global.queensHeadDamageBoost = 1;
	global.queensHeadHealthBoost = 1;
	
}
if (global.selectedDeathLordItems == Artifacts.QueensHead)
{
	if (instance_exists(obj_item_queensHead) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(obj_player.x,obj_player.y,1,obj_item_queensHead);
	}
	global.queensHeadDamageBoost = 1.3;
	global.queensHeadHealthBoost = 1.6;
	//reset
	global.bladeDamageBoost = 1;
	global.bladeSpeedBoost = 1;
	global.bladeSpeedFlatBoost = 0;
	global.bladeSpeedDamage = 0;
	global.kingsHeadHpBoost = 1;
	global.kingsHeadDamageBoost = 1;
	global.kingsHeadOrbBoost = 1;
	global.kingsHeadSummongingBoost = 1;
	
}
if (global.selectedDeathLordItems == Artifacts.KingsHead)
{
	if (instance_exists(obj_item_wispShield) == false && instance_exists(obj_player) && instance_exists(obj_player_guardianWisp) == false)
	{
		instance_create_depth(obj_player.x,obj_player.y,1,obj_item_wispShield);
	}
	global.kingsHeadHpBoost = 1.45;
	global.kingsHeadDamageBoost = 1.45;
	global.kingsHeadOrbBoost = 1.25;
	global.kingsHeadSummongingBoost = 1.25;
	//reset
	global.bladeDamageBoost = 1;
	global.bladeSpeedBoost = 1;
	global.bladeSpeedFlatBoost = 0;
	global.bladeSpeedDamage = 0;
	global.queensHeadDamageBoost = 1;
	global.queensHeadHealthBoost = 1;
	
}
//proggresion
if (falseAllBosses == true)
{
	falseAllBosses = false;
	global.hasSlainFatZombiePhase2 = false;
	global.hasSlainFatZombiePhase3 = false;
	global.hasSlainTheWispMother = false;
	global.hasSlainTheBloodPrince = false;
	global.hasSlainTheMadWitches = false;
	global.hasSlainTheGraveKeeper = false;
	global.hasSlainTheInfernalWisp = false;
	global.hasSlainTheFlameGate = false;
	global.hasSlainTheSoulWisp = false;
	global.hasSlainTheSoulGuards = false;
	global.hasSlainDeathGeneralZarodil = false;
	global.hasSlainDeathQueenZeria = false;
	global.hasSlainDeathKingZarok = false;
	global.hasSlainTheLords = false;
}
if (global.classAll == true)
{
	global.assasinAll = true;
	global.warriorAll = true;
	global.mageAll = true;
	global.shopAll = true;
	global.bloodAll = true;
	//
}
if (global.assasinAll == true)
{
	global.assasinZombie = true;	global.assasinMother = true;	global.assasinVampire = true; 
	global.assasinWitch = true;		global.assasinKeeper = true;	global.assasinInfernal = true;	
	global.assasinGate = true;		global.assasinWisp = true;		global.assasinGuards = true;
	global.assasinGeneral = true;	global.assasinQueen = true;		global.assasinKing = true;
}
if (global.assasinGeneral && global.assasinQueen && global.assasinKing)
{
	global.assasinAll = true;
}
if (global.warriorAll == true)
{
	global.warriorZombie = true;	global.warriorMother = true;	global.warriorVampire = true; 
	global.warriorWitch = true;		global.warriorKeeper = true;	global.warriorInfernal = true;	
	global.warriorGate = true;		global.warriorWisp = true;		global.warriorGuards = true;
	global.warriorGeneral = true;	global.warriorQueen = true;		global.warriorKing = true;
}
if (global.warriorGeneral && global.warriorQueen && global.warriorKing)
{
	global.warriorAll = true;
}
if (global.mageAll == true)
{
	global.mageZombie = true;		global.mageMother = true;		global.mageVampire = true; 
	global.mageWitch = true;		global.mageKeeper = true;		global.mageInfernal = true;	
	global.mageGate = true;			global.mageWisp = true;			global.mageGuards = true;
	global.mageGeneral = true;		global.mageQueen = true;		global.mageKing = true;
}
if (global.mageGeneral && global.mageQueen && global.mageKing)
{
	global.mageAll = true;
}
if (global.shopAll == true)
{
	global.shopZombie = true;		global.shopMother = true;		global.shopVampire = true; 
	global.shopWitch = true;		global.shopKeeper = true;		global.shopInfernal = true;	
	global.shopGate = true;			global.shopWisp = true;			global.shopGuards = true;
	global.shopGeneral = true;		global.shopQueen = true;		global.shopKing = true;
}
if (global.shopGeneral && global.shopQueen && global.shopKing)
{
	global.shopAll = true;
}
if (global.bloodAll == true)
{
	global.bloodZombie = true;		global.bloodMother = true; 	global.bloodWitch = true;		
	global.bloodKeeper = true;		global.bloodInfernal = true;	
	global.bloodGate = true;		global.bloodWisp = true;		global.bloodGuards = true;
	global.bloodGeneral = true;		global.bloodQueen = true;		global.bloodKing = true;
}
if (global.bloodGeneral && global.bloodQueen && global.bloodKing)
{
	global.bloodAll = true;
}
//settings
if (keyboard_check_released(ord("I")))
{	
	if (global.ShowInfo == false)
	{
		global.ShowInfo = true;
	}
}
if (keyboard_check_released(ord("F")) && fullscreen == true)
{
	fullscreen = false;
}
if (keyboard_check_released(vk_escape))
{	
	menu = Menues.Main;
	room_goto(rm_menu);
}
//Bossfix
if (menu == Menues.Main)
{
	chosenBoss = Boss.BloodZombie;
}
//cursor
if (room == rm_menu || room == rm_bossSelect)
{

	if (instance_exists(obj_cursor_menu) == false)
	{
		instance_create_depth(mouse_x,mouse_y,1,obj_cursor_menu);	
	}
}
//optemisation

//stats
timeStacks++;
if (timeStacks >= (1)*30)
{
	timeStacks = 0;
	timeSeconds += 1;
}
//balance
if (global.dD > 1.32){global.dD = 1.32;}
if (global.dD < 0.68){global.dD = 0.68;}

