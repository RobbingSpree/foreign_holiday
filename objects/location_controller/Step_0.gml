/// @description Insert description here
// You can write your code in this editor

if mouse_over(self) && mouse_check_button_pressed(mb_left)
	hide = !hide
	
if hide == false
{
	loc_list.x = x;
	with loc_item
		if hidden == false
			x = loc_list.x;
} else {
	loc_list.x = x+500;
	with loc_item
		if hidden == false
			x = loc_list.x;
}