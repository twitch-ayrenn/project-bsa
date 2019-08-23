/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) <= 10 && summonedBoss == true && gameMaster.chosenBoss == Bosses.The_Mad_Witches && gameMaster.menu == Menues.Play && instance_exists(par_enemy) == false)
{
	draw_text_transformed_color(400,600,"Press E to summon The Mad Witches",0.5,0.5,0,c_red,c_red,c_maroon,c_maroon,1);
}
if (summonedBoss == false && instance_exists(par_witch))
{
	effect_create_above(ef_rain,x,y,0.1,c_lime);
}