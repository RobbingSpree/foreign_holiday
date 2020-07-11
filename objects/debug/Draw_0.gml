/// @description Insert description here
// You can write your code in this editor

draw_set_font(defont);
draw_set_color(c_white);

//how many message in array
var message_end = array_length_1d(message)

if message_end > 0
{
	//variables
	var charwidth = 13;
	var line_end  = 35;
	var line = 0;
	var space = 0;
	var i =1;
	var delay = 3;
	//text position
	tx = 5;
	ty=room_height-55;
	
	if portrait == "none"
		tx = 5;
	else 
		tx = 130;
		
	if cutoff < string_length(message[message_current])
	{
		if timer >= delay
		{
			cutoff ++
			timer = 0;
		}
		else timer ++
	}
	
	//next message 
	if keyboard_check_pressed(ord("S"))
	{
		//if there's more message load next
		if message_current < message_end-1
		{
			message_current ++
			cutoff =0;
		} else //if not we're done
			done = true;
	}
}

//draw the text
//draw_text(tx,ty,message[message_current]);
while( i<= string_length(message[message_current]) && i <= cutoff)
{
	//check for modifier
	if string_char_at(message[message_current],i) =="/"
	{
		modifier = real(string_char_at(message[message_current],i+1))
		i++
		i++
	}
	
	//goto next line
	var length =0;
	while (string_char_at(message[message_current],i) != " " && i<= string_length(message[message_current]))
	{
		i++
		length++
	}
	if space+length >line_end
	{
		space = 0;
		line++
	}
	i-=length;
	
	//draw the text
	//apply modifiers
	switch modifier
	{
		case 0: //normal
		{
			draw_set_color(c_white);
			draw_text(tx+(space*charwidth), ty+(13*line), string_char_at(message[message_current],i));
			break;
		}
		case 1: //shakey
		{
			draw_set_color(c_white);
			draw_text(tx+(space*charwidth)+random_range(-1,1), ty+(13*line)+random_range(-1,1), string_char_at(message[message_current],i));
			break;
		}
		case 2: //red
		{
			draw_set_color(c_red);
			draw_text(tx+(space*charwidth), ty+(13*line), string_char_at(message[message_current],i));
			break;
		}
	}
	
	
	
	space++
	i++
}



//draw portrait
switch portrait
{
	case "none": break;
	
	case "debug": draw_sprite(dialouge_choice_spr,0,5,room_height-55); break;
}