/// @description Insert description here
// You can write your code in this editor


if mouse_over(self) && mouse_check_button_pressed(mb_left)
{
	global.wife_find = true;
	text_box.text = 0;
	text_box.actor_leave = true;
	text_box.convo_end = false;
	scene_flag.str = "Wife Find Get!";
	scene_flag.ease_in = true;
}

switch global.scene
{
	case loc.void: x=-100; y=-100; break;
	case loc.hotel: x=-100; y=-100; break;
	case loc.market: sprite_index = find_box_spr2; x=1310/2; y=644/2; break;
	case loc.alley: sprite_index = find_box_spr; x=1060/2; y=830/2; break;
	case loc.park: sprite_index = find_box_spr; x=913/2; y=618/2; break;
	case loc.cafe: x=-100; y=-100; break;
	case loc.pstation: x=-100; y=-100; break;
	
}

if keyboard_check(vk_shift)
{
	x=mouse_x;
	y=mouse_y;
}
//alley
//x=1060
//y=830
//market
//x=1310
//y=644
//park
//x=913
//y=618