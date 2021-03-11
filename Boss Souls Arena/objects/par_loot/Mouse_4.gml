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
	y = 124+9
	if (global.slot1 == false && x == xstart){x = 090+9;global.slot1 = true;}	
	if (global.slot2 == false && x == xstart){x = 110+9;global.slot2 = true;}
	if (global.slot3 == false && x == xstart){x = 130+9;global.slot3 = true;}
	if (global.slot4 == false && x == xstart){x = 150+9;global.slot4 = true;}
	if (global.slot5 == false && x == xstart){x = 170+9;global.slot5 = true;}
	if (global.slot6 == false && x == xstart){x = 190+9;global.slot6 = true;}
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