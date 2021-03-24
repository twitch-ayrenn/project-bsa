/// @description Insert description here
if (global.itemSlots >= 1 && global.itemSelected[bossForThisItem] == false && global.slot6 == false)
{
	if (global.soundOn == true)
	{
		audio_play_sound(snd_buttonClick,Prioity.Normal,false);
	}
	
	global.itemSelected[bossForThisItem] = true;
	global.itemSlots -= 1;
	thisItemSelected = true;
	y = 124+9-2
	if (global.slot1 == false && x == xstart){x = 076+9;global.slot1 = true;}	
	if (global.slot2 == false && x == xstart){x = 102+9;global.slot2 = true;}
	if (global.slot3 == false && x == xstart){x = 127+9;global.slot3 = true;}
	if (global.slot4 == false && x == xstart){x = 152+9;global.slot4 = true;}
	if (global.slot5 == false && x == xstart){x = 177+9;global.slot5 = true;}
	if (global.slot6 == false && x == xstart){x = 201+9;global.slot6 = true;}
	gameMaster.bonusHealth += bonusHealth;
	gameMaster.bonusSpeed += bonusSpeed;
	gameMaster.bonusDash += bonusDash;
	gameMaster.bonusDamage += bonusDamage;
	gameMaster.bonusFirerate += bonusFirerate;
	gameMaster.bonusLifeSteal += bonusLifeSteal;
	gameMaster.bonusAura += bonusAura;
	gameMaster.bonusConjur += bonusConjur;
	gameMaster.bonusCooldown += bonusCooldown;
	//
	gameMaster.previewHealth -= previewHealth;
	gameMaster.previewSpeed -= previewSpeed;
	gameMaster.previewDash -= previewDash;
	gameMaster.previewDamage -= previewDamage;
	gameMaster.previewFirerate -= previewFirerate;
	gameMaster.previewLifeSteal -= previewLifeSteal;
	gameMaster.previewAura -= previewAura;
	gameMaster.previewConjur -= previewConjur;
	gameMaster.previewCooldown -= previewCooldown;
}