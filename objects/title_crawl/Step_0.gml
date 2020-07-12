/// @description Insert description here
// You can write your code in this editor

timer += text_speed*spd;
counter += spd;

if counter > 2500 || finished
{
	audio_stop_sound(space_opera_synthy_final);
	room_goto(room0);
}
if spd < 16 && mouse_check_button_pressed(mb_left)
	spd = spd*2;
	
if spd > 0.5 && mouse_check_button_pressed(mb_right)
	spd = spd/2;