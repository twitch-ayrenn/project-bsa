/// @description Insert description here
if (global.itemSlots >= 1 && global.itemSelected[bossForThisItem] == false)
{
	global.itemSelected[bossForThisItem] = true;
	global.itemSlots -= 1;
	thisItemSelected = true;
	y = 124
	if (global.slot1 == false && x == xstart){x = 90;global.slot1 = true;}	
	if (global.slot2 == false && x == xstart){x = 110;global.slot1 = true;}
	if (global.slot3 == false && x == xstart){x = 140;global.slot1 = true;}
	if (global.slot6 == false && x == xstart){x = 230;global.slot1 = true;}
	if (global.slot5 == false && x == xstart){x = 200;global.slot1 = true;}
	if (global.slot4 == false && x == xstart){x = 170;global.slot1 = true;}
	gameMaster.bonusHealth += bonusHealth;
	gameMaster.bonusSpeed += bonusSpeed;
	gameMaster.bonusDash += bonusDash;
	gameMaster.bonusDamage += bonusDamage;
	gameMaster.bonusFirerate += bonusFirerate;
	gameMaster.bonusLifeSteal += bonusLifeSteal;
	gameMaster.bonusAura += bonusAura;
	gameMaster.bonusConjur += bonusConjur;
	gameMaster.bonusCooldown += bonusCooldown;
}