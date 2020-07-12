var line  = argument0;

if global.cafe_visits == 0
	switch line
	{
		case 0: return "A cafe! Yes! Surely someone here knows English. Gosh I really want a coffee and some banana bread."; break
		case 0: return "Te re, lasola re do te! Medo sote la’?"; break
		case 0: return "Ummmm . . . 	Sote	Sola"; break
		case 0: return "Mere te! La reteme rete so lame te! Rete la teresodo dore lare mere re larete?"; break
		case 0: return "The barista looks nervous, what did I just ask for…?"; break
		case 0: return "How about . . .? 	Sote	Sola"; break
		case 0: return "Sola tete, do rememe te sotere so la me sore la lamete la. Re te sodo mere"; break
		case 0: return "He looks unimpressed. Maybe I should leave?"; break
		
		default: return "Why does no one understand me?";
	}

if global.cafe_visits == 1
	switch line
	{
		case 0: return "Charlie, there you are! I’ve been looking all over for you, I couldn’t understand a word anyone said and I’m so, SO hungover… ugh.";break
		case 0: return "Oh no, my poor darling!” [She laughs.] “I was just getting you a coffee and some banana bread."; break
		case 0: return "Well, how about we go back to the hotel and we can decide on a facial or a couples massage? I asked the concierge to ask you what you’d prefer…"; break
		case 0: return "Oh! That’s what they were trying to say…"; break
		case 0: return "Come on, lovely!"; break
		case 0: return "[Wife exits] She’s already off and walking back to the hotel."; break
		
		
		default: return "Ah, I'm so lucky!";
	}
	
	
	
/*
Cafe: 1 Barista (No repeat)
Internal monologue: A cafe! Yes! Surely someone here knows English. Gosh I really want a coffee and some banana bread.
[Barista enters]
NPC Dialogue:
Te re, lasola re do te! Medo sote la’?
{Hey there, thanks for coming in! What can I get for ya’?}
Character selection: Ummmm . . . 	Sote	Sola
NPC dialogue: Mere te! La reteme rete so lame te! Rete la teresodo dore lare mere re larete?
{Sorry man! We definitely don’t serve those here! But can I offer you a coffee and a complimentary muffin?}
Internal dialgoue: The barista looks nervous, what did I just ask for…?
Character selection: How about . . .? 	Sote	Sola
Cafe: 2 Barista
NPC Dialogue: Sola tete, do rememe te sotere so la me sore la lamete la. Re te sodo mere.
{Look bud, if you’re wanting that sort of thing I think you’d be best off finding it somewhere else. We just do coffee.}
Internal dialogue: He looks unimpressed. Maybe I should leave?

(repeat selection if you come back)

Cafe: 3 Wife (Good ending)
Character: “Charlie, there you are! I’ve been looking all over for you, I couldn’t understand a word anyone said and I’m so, SO hungover… ugh.”
Wife: “Oh no, my poor darling!” [She laughs.] “I was just getting you a coffee and some banana bread. 
Character: Yes! Thank you my sweet! Now, what were our plans for the day?”
Wife: “Well, how about we go back to the hotel and we can decide on a facial or a couples massage? I asked the concierge to ask you what you’d prefer…”
Character: “Oh! That’s what they were trying to say…”
Wife: “Come on, lovely!”
[Wife exits]She’s already off and walking back to the hotel.
