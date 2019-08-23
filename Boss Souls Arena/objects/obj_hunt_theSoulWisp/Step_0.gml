/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinInfernal && global.assasinGate)
{if (global.hasSlainTheFlameGate && global.hasSlainTheInfernalWisp && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorInfernal && global.warriorGate)
{if (global.hasSlainTheFlameGate && global.hasSlainTheInfernalWisp && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageInfernal && global.mageGate)
{if (global.hasSlainTheFlameGate && global.hasSlainTheInfernalWisp && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopInfernal && global.mageGate)
{if (global.hasSlainTheFlameGate && global.hasSlainTheInfernalWisp && show )
	{	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodInfernal && global.bloodGate)
{if (global.hasSlainTheFlameGate && global.hasSlainTheInfernalWisp && show )
	{	visible = true;		}}
//
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}