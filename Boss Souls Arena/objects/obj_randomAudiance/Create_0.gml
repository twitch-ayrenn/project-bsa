/// @description Insert description here
randomize();
bodySprite = spr_crowdBody;
bodyColor = choose(c_maroon,c_green,c_purple,c_teal,c_silver,c_dkgray);
eyeSprite = choose(spr_crowd_eye_1,spr_crowd_eye_2)
eyeColor = choose(c_black,c_red,c_lime,c_fuchsia);
alpha = choose(1,1,1,0.85);
hasHat = choose(true,false,true,true);
hatSprite = spr_crowd_hats;
hatType = irandom_range(0,9);
followEyeObject = choose(global.player,obj_allBoss,obj_allCursor);