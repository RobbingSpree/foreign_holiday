/// @description Insert description here
// You can write your code in this editor

if mouse_over(self) && mouse_check_button_pressed(mb_left)
{
	global.scene = index;
	change_scene();
}

switch index
{
	case loc.hotel: title = "My Hotel Room"; break;
	case loc.pstation: title = "Police Station"; break;
	case loc.cafe: title = "Nearby Cafe"; break;
	case loc.market: title = "The Market"; break;
	case loc.alley: title = "Shady Alley"; break;
}
	
