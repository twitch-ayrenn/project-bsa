/// @description Insert description here
if (global.itemSlots >= 1 && global.itemSelected[bossForThisItem] == false)
{
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
hover = false;