var line  = argument0;

if global.park_visits == 0
	switch line
	{
		case 0: return "I'm In a park"; break
		case 1: return "I don't know what's going on"; break
		default: return "I approach an old woman";
	}
