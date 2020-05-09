/// @description Insert description here
if (objectToFollow != noone)
{
	x = objectToFollow.x;
	y = objectToFollow.y;
}
if (particleType == Particles.Healing_Small)
{
	depth = objectToFollow.depth+1;
	image_alpha -= 0.15;
}