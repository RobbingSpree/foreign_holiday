
var scene  = argument0;
var line = argument1;

var third_ = argument2;
var a_pointer = 0;
var b_pointer = 0;
var c_pointer = 0;
var c_string = "Que?";

text_box.str = "I think they're expecting a response."
text_box.instant = true;
text_box.question = true;

//questions from hotel room
if scene == loc.hotel
	switch line
	{
		case  18: a_pointer = 1; b_pointer = 1; break;
		case  1: a_pointer = 1; b_pointer = 1; c_pointer = 1; c_string = "Que"; third_ = true break;
	}
if scene == loc.market
	switch third_
	{
		case false: a_pointer = 1; b_pointer = 1; break;
		case  true: case  1: a_pointer = 1; b_pointer = 1; c_pointer = 2; c_string = "Leave"; third_ = true break;
	}



if third_
{
	var a_ = instance_create_layer(text_box.pt3_a,text_box.quest_y,"higher_instances",text_choice);
	a_.choice = "a";
	a_.story_pointer = a_pointer;
	var b_ = instance_create_layer(text_box.pt3_b,text_box.quest_y,"higher_instances",text_choice);
	b_.choice = "b";
	b_.story_pointer = b_pointer;
	var c_ = instance_create_layer(text_box.pt3_c,text_box.quest_y,"higher_instances",text_choice);
	c_.choice = "c";
	c_.str = c_string;
	c_.story_pointer = c_pointer;
	
} else {
	var a_ = instance_create_layer(text_box.pt2_a,text_box.quest_y,"higher_instances",text_choice);
	a_.choice = "a";
	var b_ = instance_create_layer(text_box.pt2_b,text_box.quest_y,"higher_instances",text_choice);
	b_.choice = "b";
	
}