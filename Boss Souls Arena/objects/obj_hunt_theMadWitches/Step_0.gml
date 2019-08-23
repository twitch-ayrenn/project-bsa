/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinMother)
{if (global.hasSlainTheWispMother == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorMother)
{if (global.hasSlainTheWispMother == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageMother)
{if (global.hasSlainTheWispMother == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopMother)
{if (global.hasSlainTheWispMother == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodMother)
{if (global.hasSlainTheWispMother == true && show == true){	visible = true;		}}
//
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}