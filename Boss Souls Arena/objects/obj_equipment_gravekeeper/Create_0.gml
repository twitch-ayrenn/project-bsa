pointToStandX = xstart;
pointToStandY = ystart;
gravekeeper = 0;
var shadowRange = instance_create_depth(mouse_y,mouse_x,depth,obj_gravekeeperRange);
shadowRange.objectToFollow = id;
shadowRange.image_xscale *= 0.6 + 0.35 * (gameMaster.bonusConjur/100);
shadowRange.image_yscale = shadowRange.image_xscale;
swapPlaces = true;