var line  = argument0;

if global.alley_visits == 0
	switch line
	{
		case 0: return "/3Why did I pick this way to look for Charlie"; break
		case 1: return "/0They would /1never/0 come into something this shady. Unless . . ."; break
		case 2: text_box.actor_arrive = true; text_box.talking = actor.thug; return "/4Ray so! La sote te? Te doh me me la. Sote La me so te me te."; break
		case 3: return "/4La’ sote La te ray te mete te me te late me ray te doh."; break
		case 3: return "/3A man pops out from the shadows and speaks to me."; break
		case 4: load_question(global.scene,line,false); return "/3He seems to want a response..."; break
		case 5: return "/4Ray so! La so’ te soso meso laso. La sote sososote, me te sososote."; break
		case 6: load_question(global.scene,line,false); return "Ummmm . . . "; break
		case 7: return "/4So! La sote sososote, te sososote."; break
		case 8: loc_list.loc_status[loc.alley].hidden = false; text_box.actor_leave = true; text_box.convo_end = true; global.alley_visits++; return "/3He skuls back into the shadows of the alley."; break

		default: return "I'm in danger";
	}

if global.alley_visits == 1
	switch line
	{
		case 0: return "A friendly cat approaches..."; break;
		case 1: text_box.actor_arrive = true; text_box.talking = actor.cat; return "/4MEOW! Meow, meow."; break;
		case 2: text_box.convo_end = true; global.alley_visits++; return "/0 /3Gosh, this is the /1only/0 person that makes any sense to me at the moment. "; break;
		default: return "Cat cat cat cat.";
	}
	
	
	
if global.alley_visits == 2
	switch line
	{	
		case 0: return "Oh gosh, this guy again!"; break;
		case 0: text_box.actor_arrive = true; text_box.talking = actor.thug; return "/4Ray so! Sote La me so te me te."; break;
		case 0: return "/4La’ sote La te ray te mete te me te late te."; break;
		case 0: load_question(global.scene,line,false); return "Ummmm . . . "; break;
		case 0: text_box.convo_end = true; global.alley_visits++; return "/4So! La sote sososote, te sososote."; break;
		
	}
	
if global.alley_visits == 3
	switch line
	{
		case 0: return "A friendly cat approaches..."; break;
		case 1: text_box.actor_arrive = true; text_box.talking = actor.cat; return "/4Rewow. Meeeow, meow."; break;
		case 2: text_box.convo_end = true; global.alley_visits--; return "/0 /3Hey kitty it’s you again. Have you seen Charlie?"; break;
		default: return "Cat cat cat cat.";
	}	
	
if global.wife_find == true
	switch line
	{
		case 0: return "/0… is… is that Charlie? I should try and catch up with her! Wait!"; break;
		case 1: text_box.actor_arrive = true; text_box.talking = actor.wife; return "“Darling! I just found the most wonderful cafe, isn’t this place so quaint?”"; break;
		case 2: return "Uh, yeah, you could say it is although I’ve spent most of the morning looking for you and getting very mixed up on the way! "; break;
		case 3: return "I might have unintentionally insulted a few people…"; break;
		case 4: return "She starts heading back towards a nearby cafe."; break;
		case 5: return "Oh dear… well, I’m sure they’ll understand. Come on, let’s go and get breakfast!"; break;
		case 6: room_goto(good_end); break;
		default: return "Cat cat cat cat.";
	}
	
/*
Alley: 1 Shady stranger (No repeat)
Internal monologue: Why did I pick this way to look for Charlie. They would never come into something this shady. Unless . . .
[Shady stranger enters]
NPC dialogue: Ray so! La sote te? Te doh me me la. Sote La me so te me te. La’ sote La te ray te mete te me te late me ray te doh.
{Hey buddy! How are you? You look new to town. Have I got a deal for you. I’m sure I can help your woes and sort your life in ways you need.}
Character question: He seems to want a response 		Sote	Sola
NPC dialogue:Ray so! La so’ te soso meso laso. La sote sososote, me te sososote.
{Hey buddy! I don’t sell that kinda stuff. I have sunglasses, so many sunglasses.} 
Character question: Ummmm . . . 	Sote	Sola 	Leave
NPC dialogue:So! La sote sososote, te sososote.
{Buddy! I have sunglasses, many sunglasses.} 

Alley: 2 Cat (No repeat)
[Cat enters]
NPC dialogue: MEOW! Meow, meow.
Internal monologue: Gosh, this is the only person that makes any sense to me at the moment. 

Alley: 3 Shady stranger (Repeat) if you select to come back RNG
Internal monologue: Oh gosh, this guy again!
[Shady stranger enters]
NPC dialogue: Ray so! Sote La me so te me te. La’ sote La te ray te mete te me te late te.
{Hey buddy! Have I got a deal for you. I’m sure I can help your woes and sort your life out.}
Character question: Ummmm . . . 	Sote	Sola 	Leave
NPC dialogue:So! La sote sososote, te sososote.
{Buddy! I have sunglasses, many sunglasses.} 

Alley: 4 Cat (Repeat) if you select to come back RNG
[Cat enters]
NPC dialogue: Rewow. Meeeow, meow.
Internal monologue: Hey kitty it’s you again. Have you seen Charlie?
Alley: Wife (if you click on her in the background)
Internal dialogue: … is… is that Charlie? I should try and catch up with her! Wait!

Wife: “Darling! I just found the most wonderful cafe, isn’t this place so quaint?”
Character: “Uh, yeah, you could say it is although I’ve spent most of the morning looking for you and getting very mixed up on the way! I might have unintentionally insulted a few people…”
Wife: 
