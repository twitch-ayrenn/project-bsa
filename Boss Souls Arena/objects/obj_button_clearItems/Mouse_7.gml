/// @description Insert description here
if (global.soundOn == true){audio_play_sound(snd_buttonClick,Prioity.Normal,false);}
if (gameMaster.theRedWarriorUnlocked == true && gameMaster.chosenClass == Character.TheRedWarrior)
{
	global.itemSlots = int64(1 + ((global.progressAmount*theRedWarriorProgress-1)/3));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.assassinUnlocked == true && gameMaster.chosenClass == Character.ShadowAssassin)
{
	global.itemSlots = int64(1 + ((gameMaster.assassinProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.pyromancerUnlocked == true && gameMaster.chosenClass == Character.Pyromancer)
{
	global.itemSlots = int64(1 + ((gameMaster.pyromancerProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.shopkeeperUnlocked == true && gameMaster.chosenClass == Character.Shopkeeper) 
{
	global.itemSlots = int64(1 + ((gameMaster.shopkeeperProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.bloodKnightUnlocked == true && gameMaster.chosenClass == Character.BloodKnight)
{
	global.itemSlots = int64(1 + ((gameMaster.bloodKnightProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.rainbowSlimeUnlocked == true && gameMaster.chosenClass == Character.RainbowSlime)
{
	global.itemSlots = int64(1 + ((gameMaster.rainbowSlimeProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.plaugeWalkerUnlocked == true && gameMaster.chosenClass == Character.PlaugeWalker)
{
	global.itemSlots = int64(1 + ((gameMaster.plaugeWalkerProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.agentOfGodUnlocked == true && gameMaster.chosenClass == Character.AgentOfGod)
{
	global.itemSlots = int64(1 + ((gameMaster.agentOfGodProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.gravelingUnlocked == true && gameMaster.chosenClass == Character.Graveling)
{
	global.itemSlots = int64(1 + ((gameMaster.gravelingProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
if (gameMaster.angelSlayerUnlocked == true && gameMaster.chosenClass == Character.AngelSlayer)
{
	global.itemSlots = int64(1 + ((gameMaster.angelSlayerProgress-1)/4));
	global.maxItemSlots = global.itemSlots;
}
with(par_loot){reset = true;}
global.slot1 = false; global.slot4 = false;
global.slot2 = false; global.slot5 = false;
global.slot3 = false; global.slot6 = false;
gameMaster.bonusHealth = 0;
gameMaster.bonusSpeed = 0;
gameMaster.bonusDash = 0;
gameMaster.bonusDamage = 0;
gameMaster.bonusFirerate = 0;
gameMaster.bonusLifeSteal = 0;
gameMaster.bonusAura = 0;
gameMaster.bonusConjur = 0;
gameMaster.bonusCooldown = 0;
gameMaster.itemShowInfoFor = Boss.NoBoss;