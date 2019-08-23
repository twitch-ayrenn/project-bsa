/// @description Insert description here
// You can write your code in this editor
if (gameMaster.chosenClass == Class.The_Assasin && global.assasinZombie)
{if (global.hasSlainFatZombiePhase2 == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Warrior && global.warriorZombie)
{if (global.hasSlainFatZombiePhase2 == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Mage && global.mageZombie)
{if (global.hasSlainFatZombiePhase2 == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_Shopkeeper && global.shopZombie)
{if (global.hasSlainFatZombiePhase2 == true && show == true){	visible = true;		}}
if (gameMaster.chosenClass == Class.The_BloodKnight && global.bloodZombie)
{if (global.hasSlainFatZombiePhase2 == true && show == true){	visible = true;		}}
if (visible == true){mask_index = sprite_index;}
if (visible == false){mask_index = spr_prop_cup;}