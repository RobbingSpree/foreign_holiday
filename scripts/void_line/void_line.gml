var line  = argument0;

/*
normal			0
shakey			1
red				2
protag_font		3
npc_font		4
*/

if global.void_visits == 0
	switch line
	{
		case 0: return "/1..."; break;
		case 1: return "/0HECK! /1Oh wow /0my head!"; break;
		case 2: return "/0Wait, /1where am I? /0Where is Charlie? /1Where am I?/0"; break;
		case 3: return "/1Ow my head."; break;
		case 4: return "/0Ok I remember we landed and I think I /2remember /0getting to the hotel."; break;
		case 5: global.void_visits++; change_scene(loc.hotel); return "That's where we must be.";  break;

		default: return "I'm in going to contemplate my problems";
	}
