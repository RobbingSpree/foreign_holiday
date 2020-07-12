/// @description Insert description here
// You can write your code in this editor

if choice == "a"
	str = "Sote?";
if choice == "b"
	str = "Sola?";
 //the string for a c option is imported by the question load function
	
if mouse_over(self) && mouse_check_button_pressed(mb_left)
{
	text_box.text += story_pointer;
	text_box.instant = false;
	//remove all question boxes
	with text_choice
	{
		instance_destroy(self);
	}
}