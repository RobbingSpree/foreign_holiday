var line  = argument0;

/*
normal			0
shakey			1
red				2
protag_font		3
npc_font		4
*/

if global.hotel_visits == 0
	switch line
	{
		case 0: return "But I'm not a we? "; break
		case 1: return "And where is my luggage? "; break
		case 2: return "/0Ok I have to find /2Charlie/0, they'll know what to do! "; break
		case 3: return "Ok; to the front desk. There must be someone there who can help me."; break
		case 4: return "... ... ..."; break
		case 5: return "I open the door of my room to find an official looking woman about to knock."; break
		case 6: text_box.actor_arrive = true; text_box.talking = actor.concerge; return "/4Olameso, soso me doh te so. "; break
		case 7: return "/4Te late so sote te me te mete doh. "; break
		case 8: return "/4Ray teso so me te sosodoh somete lala doh me te tela te ray fa te’ te sorayte me lame la."; break
		case 9: return "/3Have I /1stopped /0being able to understand English?"; break
		case 10: return "/4Me teso te te late me te meso somete? So tetete sote me so sola?"; break
		case 11: return "/4La sola doh te me lame so te te’ te la so so."; break
		case 12: return "/3Ummmmm . . ."; break
		case 13: return "/0 /4Sote me sola? /2Sote/0? /2Sola/0?"; break
		case 14: return "/3Ummm . . . she's gesturing to the desk. Oooh a town map."; break
		case 15: return "I guess they’re offering me a town map. "; break
		case 16: return "Is that yes or no? /2Sote/0, /2sola/0? "; break
		case 17: return "Ok . . . I guess they want an answer. "; break
		case 18: load_question(global.scene,line,false); return"What should I say?"; break;
		case 19: return"/4Teso La’ metelate soso te doh te te te late sola. Dohme te ray." break;
		case 20: global.hotel_visits++; location_controller.tutorial_hide=false; return"/3Oh they’re inviting me to leave. I guess I’m not getting the map then." break;
		case 21: return"I leave the hotel and head outside.";  break;

		default: return "A woman approaches...";
	}

if global.hotel_visits >= 1
	switch line
	{
		case 0: return "A woman approaches..."; break;
		case 1: return "/4Te dohfa ladoh’ te. So te late la mete me dohfa me te."; break;
		case 2: return "/4Soso La te la te sote some dd?"; break;
		case 3: load_question(global.scene,line,false); return "/3They're looking at me expectantly..."; break;
		case 4: return "/4Te la’ so dohte. Dohme te ray"; break;
		case 5: return "/3I should look somewhere else"; break;
	}

//case 18: return"" break;