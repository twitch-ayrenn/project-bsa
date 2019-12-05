/// @description Insert description here
randomize();
bodySprite = choose(spr_crowd_body_1,spr_crowd_body_2,spr_crowd_body_3,spr_crowd_body_4,spr_crowd_body_5,spr_crowd_body_6)
sprite_index = bodySprite;
eyeSprite = choose(spr_crowd_eye_1,spr_crowd_eye_2,spr_crowd_eye_3,spr_crowd_eye_4);
red = irandom_range(125,225);
green = irandom_range(125,225);
blue  = irandom_range(125,225);
bodyColor = make_color_rgb(red,green,blue);
eyeColor = make_color_rgb(int64(red*0.5),int64(green*0.5),int64(blue*0.5));
image_blend = bodyColor;
followEyeObject = choose(global.player,obj_allBoss,obj_allCursor);
alpha = choose(1,1,1,1,0.65);
image_alpha = alpha;
dontDrawEye = false;
if (bodySprite == spr_crowd_body_3){dontDrawEye = true;}
image_index = choose(0,1);
chanceToCome = 1;
probability = irandom_range(0,100);
if (gameMaster.chosenClass == Character.TheRedWarrior){chanceToCome = gameMaster.theRedWarriorProgress*3;}
if (gameMaster.chosenClass == Character.ShadowAssassin){chanceToCome = gameMaster.assassinProgress*3;}
if (gameMaster.chosenClass == Character.Pyromancer){chanceToCome = gameMaster.pyromancerProgress*3;}
if (gameMaster.chosenClass == Character.Shopkeeper){chanceToCome = gameMaster.shopkeeperProgress*3;}
if (gameMaster.chosenClass == Character.BloodKnight){chanceToCome = gameMaster.bloodKnightProgress*3;}
if (gameMaster.chosenClass == Character.RainbowSlime){chanceToCome = gameMaster.rainbowSlimeProgress*3;}
if (gameMaster.chosenClass == Character.AgentOfGod){chanceToCome = gameMaster.agentOfGodProgress*3;}
if (gameMaster.chosenClass == Character.AngelSlayer){chanceToCome = gameMaster.angelSlayerProgress*3;}
if (gameMaster.chosenClass == Character.PlaugeWalker){chanceToCome = gameMaster.plaugeWalkerProgress*3;}
if (gameMaster.chosenClass == Character.Graveling){chanceToCome = gameMaster.gravelingProgress*3;}
if (probability >= chanceToCome)
{
	instance_destroy();
}