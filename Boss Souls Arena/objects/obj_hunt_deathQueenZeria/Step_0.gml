/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinWisp && global.assasinGuards)
{if (global.hasSlainTheSoulWisp && global.hasSlainTheSoulGuards && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorWisp && global.warriorGuards)
{if (global.hasSlainTheSoulWisp && global.hasSlainTheSoulGuards && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageWisp && global.mageGuards)
{if (global.hasSlainTheSoulWisp && global.hasSlainTheSoulGuards && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopWisp && global.mageGuards)
{if (global.hasSlainTheSoulWisp && global.hasSlainTheSoulGuards && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodWisp && global.bloodGuards)
{if (global.hasSlainTheSoulWisp && global.hasSlainTheSoulGuards && show )
	{	visible = true;		}}
//
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}