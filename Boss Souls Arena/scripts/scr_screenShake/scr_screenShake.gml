/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude = Strength (radius in pixels)
/// @arg Frames sets length of shake in frames (30 = 1 second)
with (obj_camera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}