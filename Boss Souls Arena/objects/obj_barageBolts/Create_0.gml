/// @description Insert description here
// You can write your code in this editor
destroy = true;
timeToDestroy = random_range(5,20);
var blueDifferance = 25;
var greenDifferance = 5;
image_blend = make_color_rgb(0,200+irandom_range(-greenDifferance,greenDifferance),230+irandom_range(-blueDifferance,blueDifferance));
image_alpha = 0.75;
//sound