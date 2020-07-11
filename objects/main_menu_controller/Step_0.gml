/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_released(mb_left)
	room_goto_next();
	
if keyboard_check_pressed(ord("C"))
	room_goto(credit_room);