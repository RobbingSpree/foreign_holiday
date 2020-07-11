/// @description Insert description here
// You can write your code in this editor

if flag 
{
	image_alpha -=change;
	if image_alpha <= 0
	{
		image_index = new_bg;
		timer-=1;
	}
	if timer <= 0
		change = -0.05;
		
	if image_alpha >= 1
	{
		flag = false;
		change = 0.05;
		timer = timer_max;
		new_bg = -1;
	}
}