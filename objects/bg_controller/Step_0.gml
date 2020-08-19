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
	//swap to fade in
	if timer <= 0
	{
		change = -0.05;
		switch global.scene
	{
		case loc.hotel: bg_actors_1 = -1; bg_actors_2 = -1; break; //none
		case loc.cafe: bg_actors_1 = 9; bg_actors_2 = 15;  break; //9 & 15
		case loc.park: bg_actors_1 = 8; bg_actors_2 = 11; break; //8 & 11
		case loc.alley: bg_actors_1 = 1; bg_actors_2 = 5; break; //1 & 5
		case loc.pstation: bg_actors_1 = -1; bg_actors_2 = -1; break; //none
		case loc.market: bg_actors_1 = 3; bg_actors_2 = 7; break; //3 & 7
	}
	}
		
	if image_alpha >= 1
	{
		flag = false;
		change = 0.05;
		timer = timer_max;
		new_bg = -1;
	}
}

if keyboard_check_pressed(vk_shift)
	bg_actors++
if keyboard_check_pressed(vk_escape)
	bg_actors=-1;