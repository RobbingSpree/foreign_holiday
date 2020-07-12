var line  = argument0;

if global.wife_find == true
	switch line
	{
		case 0: return "… is that the love of my life standing over there? Charlie!"; break
		case 1: text_box.actor_arrive = true; text_box.talking = actor.wife; return "Why, hello there dashing stranger!"; break
		case 2: return "Aren't you a sight for sore eyes, finding you almost makes me forget my hangover!"; break
		case 3: return "This sea air can only help! Here, have some banana bread. "; break
		case 4: return "She smiles and hands you some food before kissing you on the cheek. "; break
		case 5: return "I'm so glad to be here with you!"; break
		case 6: return "We sit a while in the park, taking the opportunity to just bask in the glory of one another."; break
		case 7: room_goto(good_end); break;
		default: return "This is more like it!";
	}

if global.park_visits == 0
	switch line
	{
		case 0: return "Great a park. The sun on my face for a moment is helping my hangover."; break
		case 1: return "What's that noise bringing back my headache? So many birds. "; break
		case 2: return "Ooh a sweet old lady is feeding birds, I wonder if she's seen Charlie"; break
		case 3: text_box.actor_arrive = true; text_box.talking = actor.oldlady; return "An old lady approaches flanked by a dozen birds"; break
		case 4: return "/4Rayme te. Te sote solaso! La some La te te late telala. "; break
		case 5: return "/4Sote so tedohlaso tedoh so. Tetete la laso te te te te so sote la te te te te teso. "; break
		case 6: return "/4Doh dd tedohlaso la, ray sote late dd telaladoh. La te some sote te telaladoh?" break;
		case 7: return "/3She's handed me bird seed. I guess I'll feed the birds with her for a moment. I could do with the sit down."; break
		case 8: return "/4Te late doh late ray te sote so teso late. Me te te telaladoh?"; break
		case 9: load_question(global.scene,line,false); return  "Ummmm . . ."; break
		case 10: return "/4Te te tedoh sote. Rayte te doh me te te sote raymete. Somete sote sofa te me laso te late."; break
		case 11: text_box.convo_end = true; global.park_visits++; return "/3She looks a little concerned. I hope the birds are ok. I better keep looking for Charlie."; break
	
		default: return "Man, I'm hungry; maybe I can eat the birdseed?";
	}
	
if global.park_visits == 1
	switch line
	{	
		case 0: text_box.actor_arrive = true; text_box.talking = actor.oldlady; return "I approach the old lady again"; break
		case 1: return "/4La te doh te late so do sola la? Ray fa ray so mefa me ray sote."; break
		case 2: load_question(global.scene,line,false); return "Ummmm . . ."; break
		case 3: return "/4Te te. La so tefa melate temete so sola la mesomemelate. Tetete tete te te me te late."; break
		case 4: return "She looks a little concerned. I hope the birds are ok."; break
		case 5: loc_list.loc_status[loc.cafe].hidden = false; text_box.convo_end = true; global.park_visits++; return "/0I better keep looking for Charlie. I /1think/0 I can see a /2Cafe /0in the distance."; break

		default: return "Man, I'm hungry; maybe I can eat the birdseed?";
	}
	
	if global.park_visits == 2
	switch line
	{	
		case 0: text_box.actor_arrive = true; text_box.talking = actor.oldlady; return "I approach the old lady again"; break
		case 1: return "/4La te doh te late so do sola la? Ray fa ray so mefa me ray sote."; break
		case 2: load_question(global.scene,line,true); return "Ummmm . . ."; break
		case 3: return "/4Te te. La so tefa melate temete so sola la mesomemelate. Tetete tete te te me te late."; break
		case 4: text_box.convo_end = true; change_scene(loc.hotel); return "The old lady flags someone down and I realise too late it's a police officer. They lead me away."; break
		case 5: text_box.convo_end = true; return "/0I better keep looking for Charlie. Have I looked /2everywhere/0?"; break

		default: return "Man, I'm hungry; maybe I can eat the birdseed?";
	}
	

	


/*
Park: 1 Old lady feeding birds (No repeat)
Internal monologue: Great a park. The sun on my face for a moment is helping my hangover. What's that noise bringing back my headache? So many birds. Ooh a sweet old lady is feeding birds, I wonder if she's seen Charlie?
[Old lady enters]
NPC dialogue: Rayme te. Te sote solaso! La some La te te late telala. Sote so tedohlaso tedoh so. Tetete la laso te te te te so sote la te te te te teso. Doh dd tedohlaso la, ray sote late dd telaladoh. La te some sote te telaladoh?
{Hello dear. You are wonderful! I think I met your wife earlier. Such a beautiful young lady. Please sit with me and tell me all about how you met and your dreams. Meet my beautiful birds, they are like my children. Will you two have any children?}
Internal monologue: She's handed me bird seed. I guess I'll feed the birds with her for a moment. I could do with the sit down.
NPC dialogue: Te late doh late ray te sote so teso late. Me te te telaladoh?
{Your wife seems like she would make a great wife. Do you want children?}
Character selection: Ummmm . . . 	Sote	Sola
NPC dialogue: Te te tedoh sote. Rayte te doh me te te sote raymete. Somete sote sofa te me laso te late.
{Dear me young one. Maybe you need to get your eyes checked. Those are things you do with your wife.}
Internal monologue: She looks a little concerned. I hope the birds are ok. I better keep looking for Charlie.

Park: 2 Old lady feeding birds  (Repeat) if you select to come back
NPC dialogue: La te doh te late so dd sola la? Ray fa ray so mefa me ray sote.
{Did you see your wife pass by just now? She said she was going to the cafe.}
Character selection: Ummmm . . . 	Sote	Sola
NPC dialogue: Te te. La so tefa melate temete so sola la mesomemelate. Tetete tete te te me te late.
{Dear me. I was being polite before but this is inappropriate. Please leave me and find your wife.}
Internal monologue: She looks more concerned.
Character selection: Ummmm . . . 	Sote	Sola	 Leave
If you select anything but leave you go to the police station, bad ending.


Park: Wife 1 (looking out over the ocean)
Character internal dialogue: ... is that the love of my life standing over there? Charlie!
Wife: “Why, hello there dashing stranger!”
Character: “Finding you almost makes me forget my hangover!”
Wife: “This sea air can only help! Here, have some banana bread.” She smiles and hands you some food before kissing you on the cheek.
Wife: “I'm so glad to be here with you!”
Character internal dialogue: We sit a while in the park, taking the opportunity to just bask in the glory of one another.

