
var scene  = argument0;
var line = argument1;

var third_ = false;
var a_pointer = 0;
var b_pointer = 0;
var c_pointer = 0;
var c_string = "Que?";

text_box.str = "I think they're expecting a response."
text_box.instant = true;

//questions from hotel room
if scene == loc.hotel
	switch line
	{
		case  18: a_pointer = 1; b_pointer = 1; break;
		case  1: a_pointer = 0; b_pointer = 0; c_pointer = 0; c_string = "Que"; third_ = true break;
	}



if third_
{
	var a_ = instance_create_layer(text_box.pt3_a,text_box.quest_y,"higher_instances",text_choice);
	a_.choice = "a";
	var b_ = instance_create_layer(text_box.pt3_b,text_box.quest_y,"higher_instances",text_choice);
	b_.choice = "b";
	var c_ = instance_create_layer(text_box.pt3_c,text_box.quest_y,"higher_instances",text_choice);
	c_.choice = "c";
	c_.str = c_string;
	
} else {
	var a_ = instance_create_layer(text_box.pt2_a,text_box.quest_y,"higher_instances",text_choice);
	a_.choice = "a";
	var b_ = instance_create_layer(text_box.pt2_b,text_box.quest_y,"higher_instances",text_choice);
	b_.choice = "b";
	
}