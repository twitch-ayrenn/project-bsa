pointToStandX = xstart;
pointToStandY = ystart;
gravekeeper = 0;
var plagueRange = instance_create_depth(mouse_y,mouse_x,depth,obj_plagueWispRange);
plagueRange.objectToFollow = id;
plagueRange.image_xscale *= 0.75 + 0.15 * (gameMaster.bonusConjur/100);
plagueRange.image_yscale = plagueRange.image_xscale;
circleId = plagueRange.id;
swapPlaces = true;
destroy = true;
hp = 10;
maxHp = hp;