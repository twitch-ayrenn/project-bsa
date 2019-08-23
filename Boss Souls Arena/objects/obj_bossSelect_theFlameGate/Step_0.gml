/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinKeeper)
{if (global.hasSlainTheGraveKeeper && show){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorKeeper)
{if (global.hasSlainTheGraveKeeper && show){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageKeeper)
{if (global.hasSlainTheGraveKeeper && show){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopKeeper)
{if (global.hasSlainTheGraveKeeper && show){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodKeeper)
{if (global.hasSlainTheGraveKeeper && show){	visible = true;		}}
//
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}