/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_player) <= 15 && summonedBoss == true && gameMaster.chosenBoss == Bosses.Death_Lords)
{
	draw_text_transformed_color(400,600,"Press E to summon The Death Lords.",0.5,0.5,0,c_red,c_red,c_maroon,c_maroon,1);
}