/// @description Insert description here
// You can write your code in this editor
//decrements health on collision, sets inv_frames to one second away
if(inv_frames <= 0)
{
	curr_health--;
	inv_frames = 30;
}
