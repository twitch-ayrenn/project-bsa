/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinWitch ||
gameMaster.chosenClass == Class.The_Assasin && global.assasinVampire)
{if (global.hasSlainTheBloodPrince && show || global.hasSlainTheMadWitches && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorWitch ||
gameMaster.chosenClass == Class.The_Warrior && global.warriorVampire)
{if (global.hasSlainTheBloodPrince && show || global.hasSlainTheMadWitches && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageWitch ||
gameMaster.chosenClass == Class.The_Mage && global.mageVampire)
{if (global.hasSlainTheBloodPrince && show || global.hasSlainTheMadWitches && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopWitch ||
gameMaster.chosenClass == Class.The_Shopkeeper && global.shopVampire)
{if (global.hasSlainTheBloodPrince && show  || global.hasSlainTheMadWitches && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodWitch ||
gameMaster.chosenClass == Class.The_BloodKnight && global.bloodVampire)
{if (global.hasSlainTheBloodPrince && show  || global.hasSlainTheMadWitches && show )
	{	visible = true;		}}
//
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}