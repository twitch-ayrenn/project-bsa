/// @description Insert description here
// You can write your code in this editor
if (class == Class.The_Warrior)
{	
	draw_healthbar(75,60,75+230+maxHp*0.4,60+20,(hp / maxHp) * 100,c_black,c_red,c_maroon,0,true,true);
	draw_sprite_ext(spr_player_theWarrior,0,50,75,5,5,0,c_white,1)
}
if (instance_exists(obj_item_wispShield))
{
	draw_healthbar(75+230+maxHp*0.4,60,75+230+maxHp*0.4+obj_item_wispShield.maxHp*1.5,60+20,(obj_item_wispShield.hp / obj_item_wispShield.maxHp) * 100,c_black,c_white,c_red,0,false,true);
}
