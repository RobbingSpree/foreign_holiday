/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_released(mb_left)
	room_goto(title_room);
	
timer -- 

if timer <= 0
{
	timer = timer_max;
	show_social = !show_social;
}