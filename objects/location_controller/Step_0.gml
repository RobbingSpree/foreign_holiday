/// @description Insert description here
// You can write your code in this editor

if mouse_over(self) && mouse_check_button_pressed(mb_left)
	hide = !hide
	
if hide == false
{
	loc_list.dx = x;
	with loc_item
		if hidden == false
			dx = loc_list.dx+31;
} else {
	loc_list.dx = x+500;
	with loc_item
		if hidden == false
			dx = loc_list.dx+31;
}