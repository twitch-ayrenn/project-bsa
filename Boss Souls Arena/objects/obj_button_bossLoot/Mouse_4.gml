/// @description Insert description here
gameMaster.menu = Menues.BossLoot;
if (instance_exists(obj_selectedZombieArrow) == false){instance_create_depth(x,y,-1000,obj_selectedZombieArrow);}
if (instance_exists(obj_selectedWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedWispArrow);}
if (instance_exists(obj_selectedVampireArrow) == false){instance_create_depth(x,y,-1000,obj_selectedVampireArrow);}
if (instance_exists(obj_selectedWitchItem) == false){instance_create_depth(x,y,-1000,obj_selectedWitchItem);}
if (instance_exists(obj_selectedKeeperArrow) == false){instance_create_depth(x,y,-1000,obj_selectedKeeperArrow);}
if (instance_exists(obj_selectedInfernalArrow) == false){instance_create_depth(x,y,-1000,obj_selectedInfernalArrow);}
if (instance_exists(obj_selectedFlameGateArrow) == false){instance_create_depth(x,y,-1000,obj_selectedFlameGateArrow);}
if (instance_exists(obj_selectedSoulWispArrow) == false){instance_create_depth(x,y,-1000,obj_selectedSoulWispArrow);}
if (instance_exists(obj_selectedSoulGuardsArrows) == false){instance_create_depth(x,y,-1000,obj_selectedSoulGuardsArrows);}
if (instance_exists(obj_selectedArtifactArrows) == false){instance_create_depth(x,y,-1000,obj_selectedArtifactArrows);}

//sound
if (global.soundOn == true)
{
	audio_play_sound(snd_buttonClick,Prioity.Normal,false);
}
