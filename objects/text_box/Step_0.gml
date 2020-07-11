/// @description Insert description here
// You can write your code in this editor


if (mouse_within(x1,y1,x2,y2) && mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space)) && question = false
{
	text ++;
	cutoff =0;
	load_next_text(global.scene,text);
}

//debug
if keyboard_check_pressed(vk_control)
	load_question(global.scene,text+1);