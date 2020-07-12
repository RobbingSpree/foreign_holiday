var line  = argument0;

if global.cafe_visits == 0
	switch line
	{
		case 0: return "/0A cafe! /1Yes/0! Surely someone here knows English. "; break
		case 1: return "/0Gosh I really want a coffee and some /1banana bread/0."; break
		case 2: text_box.actor_arrive = true; text_box.talking = actor.barista; return "/4Te ray, lasola ray do te! Medo sote la'?"; break
		case 3: load_question(global.scene,line,false); return "/3Ummmm . . ."; break
		case 4: return "/4Mere te! La rayteme rayte so lame te! Rayte la teraysodo doray laray meray ray larayte?"; break
		case 5: return "/3 /0The barista looks nervous, /1what did I just ask for...?/0"; break
		case 6: load_question(global.scene,line,false); return "/3How about . . .?"; break
		case 7: return "/4Sola tete, do raymeme te soteray so la me soray la lamete la. Ray te sodo meray"; break
		case 8: text_box.convo_end = true; global.cafe_visits++; return "/3 /0He looks unimpressed. /1Maybe /0I should leave?"; break
		
		default: return "Why does no one understand me?";
	}

if global.cafe_visits == 1
{
	switch line
	{
		case 0: return "I return to the Cafe"; break
		case 1: text_box.actor_arrive = true; text_box.talking = actor.wife; return "/0Charlie, /1there you are/0! I've been looking all over for you. ";break
		case 2: return "/0I couldn't understand a word anyone said and I'm so, SO hungover... ugh.";break
		case 3: return "Oh no, my poor darling!"; break
		case 4: text_box.talking = actor.wife_laugh;return "She laughs her beautiful laugh."; break
		case 5: return "I was just getting you a coffee and some banana bread."; break
		case 6: return "Well, how about we go back to the hotel and we can decide on a facial or a couples massage? I asked the concierge to ask you what you'd prefer..."; break
		case 7: return "Oh! That's what they were trying to say..."; break
		case 8: return "Come on, lovely!"; break
		case 9: text_box.actor_leave = true; return "She's already off and walking back to the hotel."; break
		case 10: room_goto(good_end); break;

		default: return "Ah, I'm so lucky!";
	}
}
	
	
/*
Cafe: 1 Barista (No repeat)
Internal monologue: A cafe! Yes! Surely someone here knows English. Gosh I really want a coffee and some banana bread.
[Barista enters]
NPC Dialogue:
Te re, lasola re do te! Medo sote la'?
{Hey there, thanks for coming in! What can I get for ya'?}
Character selection: Ummmm . . . 	Sote	Sola
NPC dialogue: Mere te! La reteme rete so lame te! Rete la teresodo dore lare mere re larete?
{Sorry man! We definitely don't serve those here! But can I offer you a coffee and a complimentary muffin?}
Internal dialgoue: The barista looks nervous, what did I just ask for...?
Character selection: How about . . .? 	Sote	Sola
Cafe: 2 Barista
NPC Dialogue: Sola tete, do rememe te sotere so la me sore la lamete la. Re te sodo mere.
{Look bud, if you're wanting that sort of thing I think you'd be best off finding it somewhere else. We just do coffee.}
Internal dialogue: He looks unimpressed. Maybe I should leave?

(repeat selection if you come back)

Cafe: 3 Wife (Good ending)
Character: “Charlie, there you are! I've been looking all over for you, I couldn't understand a word anyone said and I'm so, SO hungover... ugh.”
Wife: “Oh no, my poor darling!” [She laughs.] “I was just getting you a coffee and some banana bread. 
Character: Yes! Thank you my sweet! Now, what were our plans for the day?”
Wife: “Well, how about we go back to the hotel and we can decide on a facial or a couples massage? I asked the concierge to ask you what you'd prefer...”
Character: “Oh! That's what they were trying to say...”
Wife: “Come on, lovely!”
[Wife exits]She's already off and walking back to the hotel.
