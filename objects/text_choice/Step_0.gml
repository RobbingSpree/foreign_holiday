/// @description Insert description here
// You can write your code in this editor

if choice == "a"
	str = "Yes?";
if choice == "b"
	str = "No?";
 //the string for a c option is imported by the question load function
	
if mouse_over(self) && mouse_check_button_pressed(mb_left)
{
	text_box.text = story_pointer;
	//remove all question boxes
	with question_parent
	{
		instance_destroy(self);
	}
}