/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_released(mb_left)
	room_goto_next();
	
if keyboard_check_pressed(ord("C"))
	room_goto(credit_room);
	
	global.hotel_visits = 0;
	global.market_visits = 0;
	global.alley_visits = 0;
	global.park_visits = 0;
	global.cafe_visits = 0;
	global.police_visits = 0;
	global.void_visits = 0;