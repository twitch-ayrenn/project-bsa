/// @description Insert description here
// You can write your code in this editor
shake = 0;
image_index = 1;
blowRoofUp = true;
phase = 3;
with(obj_camera){shake_remain += 4;}
var damageText = instance_create_depth(global.player.x+irandom_range(-8,8),global.player.y+irandom_range(-5,5),global.player.depth-10,obj_textMaker);
	damageText.color = c_yellow;
	damageText.text = "New Item!";