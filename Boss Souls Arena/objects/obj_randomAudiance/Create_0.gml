/// @description Insert description here
randomize();
bodyType = irandom_range(1,8);
faceType = irandom_range(1,8);
//image_blend = choose(global.paleRed,global.yelloworange,global.yellowGreen,global.darkGreen,
//global.teal,global.steelBlue,global.paleViolet,global.slateGray,global.skyBlue);
image_blend = make_color_rgb(irandom_range(0,255),irandom_range(0,255),irandom_range(0,255));
followEyeObject = choose(obj_allBoss,obj_allCursor,obj_allPlayer);
eyeSprite = 0;
if (bodyType == 1){sprite_index = spr_randomBody_1_idle;}if (bodyType == 2){sprite_index = spr_randomBody_2_idle;}
if (bodyType == 3){sprite_index = spr_randomBody_3_idle;}if (bodyType == 4){sprite_index = spr_randomBody_4_idle;}
if (bodyType == 5){sprite_index = spr_randomBody_5_idle;}if (bodyType == 6){sprite_index = spr_randomBody_6_idle;}
if (bodyType == 7){sprite_index = spr_randomBody_7_idle;image_alpha = 0.75;}if (bodyType == 8){sprite_index = spr_randomBody_8_idle;}
if (faceType == 1){eyeSprite = spr_randomFace_1_idle;}if (faceType == 2){eyeSprite = spr_randomFace_2_idle;}
if (faceType == 3){eyeSprite = spr_randomFace_3_idle;}if (faceType == 4){eyeSprite = spr_randomFace_4_idle;}
if (faceType == 5){eyeSprite = spr_randomFace_5_idle;}if (faceType == 6){eyeSprite = spr_randomFace_6_idle;}
if (faceType == 7){eyeSprite = spr_randomFace_7_idle;}if (faceType == 8){eyeSprite = spr_randomFace_8_idle;}
