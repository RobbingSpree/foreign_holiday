var line  = argument0;

if global.market_visits == 0
	switch line
	{
		case 0: return "I'm In a local market"; break
		case 1: return "I don't know what's going on"; break
		default: return "I'm In a market";
	}
