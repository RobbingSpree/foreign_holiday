var line  = argument0;

if global.wife_find == true
{
	switch line
	{
		case 0: text_box.actor_arrive = true; text_box.talking = actor.wife;return "Hey there you are. "; break;
		case 1: return "How are you feeling after the flight? "; break;
		case 2: text_box.talking = actor.wife_laugh return "I'm so excited to spend our honeymoon here. "; break;
		case 3: return "Love you!"; break;
		case 4: return "I'm so happy! "; break;
		case 5: room_goto(good_end); break;
	}
}

if global.market_visits == 0
	switch line
	{
		case 0: return "/0Ok the outside is /1bright/0. God I could use some sunglasses."; break
		case 1: return "/1Ohhh /0a market. Food! I could eat /1anything/0. "; break
		case 2: return "That apple looks wonderful right now."; break
		case 3: return "/2Hey, could I have an apple please!"; break
		case 4: text_box.actor_arrive = true; text_box.talking = actor.marketman; return "/4Ray solate, te sola te so me ray some tetete lafa. La te te late telala. Ray' solaso!"; break
		case 5: load_question(global.scene,line,false); return "/3Hmm, he's looking at me expectantly. What should I say?"; break
		case 6: return "/4La te' ray te laso soso. La so' some te la teso te'te rayfa!"; break
		case 7: return "/3They look a little cranky. Maybe the apples aren't for sale."; break
		case 8: loc_list.loc_status[loc.alley].hidden = false; text_box.convo_end = true; global.market_visits++; return "/0Did he motion towards that /2alley/0? I guess I'll look that way."; break
		default: return "I'm In a market";
	}

if global.market_visits == 1
	switch line
	{
		case 0: return "/3I /1still/0 haven't eaten. Could I /1please/0 have an apple please!"; break;
		case 1: text_box.actor_arrive = true; text_box.talking = actor.marketman; return "/4Sote te tedoh te late te? La me la me laso ray so. So ray so sofa sote rayfa mete me te sote sote te medoh. Sote te dohte me ray sote?"; break;
		case 2: load_question(global.scene,line,false); return "/0Ummm . . . "; break;
		case 3: return "/4La doh te me tete la!"; break;
		case 4: return "/0He really won't let me take an apple."; break;
		case 5: text_box.convo_end = true; global.market_visits++; return "/0I just need to find Charlie and then I can eat. Where /2haven't/0 I looked in this town?"; break;
	}


if global.market_visits == 2
	switch line
	{
		case 0: return "I return to the market."; break
		case 1: return "/3 /2Apple please!?"; break;
		case 2: text_box.actor_arrive = true; text_box.talking = actor.marketman; return "/4Sote te tedoh te late te?"; break;
		case 3: return "/4La me la me laso ray so. Me sote te dohte me ray sote?"; break;
		case 4: load_question(global.scene,line,false); return "/3 /0He's looking at me expectantly..."; break;
		case 5: return "/4La te so' tete la La so sofa ray melate!"; break;
		case 6: load_question(global.scene,line,true); return "They look upset . . ."; break;
		case 7: global.market_visits++; change_scene(loc.pstation); return "A sten looking Police Officer gets called over and takes you away.";
		case 8: text_box.convo_end = true; return "You beat a hasty retreat. Where to now?"; break;
	}


/*

Market: 1 Wife (if you click on her in the background)
NPC dialogue: Hey there you are. 
How are you feeling after the flight? 
I'm so excited to spend our honeymoon here. 
Love you!
Internal monologue: I'm so happy! 

