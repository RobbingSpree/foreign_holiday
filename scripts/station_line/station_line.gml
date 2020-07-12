var line  = argument0;

if global.police_visits == 0
	switch line
	{
		case 0: return "Oh no, why did I end up here, I haven’t done anything wrong! At least, not that I know of..."; break
		case 0: return "[Police woman enters] Sofa meme tela dola retimiso? Tereme fala so la mere tetere la! Te re so lami rete “Sote me Sola”!"; break
		case 0: return "Oh no, ummmm . . . 	Sote	Sola"; break
		case 0: return "Oh no they look frustrated."; break
		case 0: return "Sola te… re, mere telaso doso la, soredola la tereme tedola?"; break
		case 0: return "Errr….       Sote  Sola"; break
		case 0: return "Dosore la reteso, me sodolate me tela reso me la fa."; break
		case 0: return "Oh here we go, they’re putting me in a cell. This is not how I saw my honeymoon ending up… What will I do if Charlie doesn’t find me!?"; break

		default: return "I don't think this could have gone worse...";
	}
	
if global.police_visits == 1
	switch line
	{
		case 0: return "Dosore la reteso, me sodolate me tela reso me la fa."; break

		default: return "I don't think this could have gone worse...";
	}
	
if global.police_visits == 2
	switch line
	{
		case 0: return "[Wife enters, angry face] What have you been doing!? The police officer came to get me. Said you’d been propositioning all the people in the village! "; break
		case 0: return "No, I wasn’t. The clerk at the hotel taught me yes and no. I was just trying to talk to people and find you. I’m so hungover!"; break
		case 0: return "I'll try and help you explain this but you have a lot of apologising to do! [Wife exits]"; break
		case 0: return "Internal dialogue: Not the best way to start matrimonial bliss… Oh well."; break

	}
	
/*
Police Station: 1 Police officer (No repeat)
Internal monologue - Oh no, why did I end up here, I haven’t done anything wrong! At least, not that I know of...
[Police woman enters]
Character question: Sofa meme tela dola retimiso? Tereme fala so la mere tetere la! Te re so lami rete “Sote me Sola”! 
{Sir, can you tell me where you’re staying? The locals are concerned you’re a bit lost! They said you just keep saying “Massage or Facial”!)
Character selection: Oh no, ummmm . . . 	Sote	Sola
Internal dialogue: Oh no they look frustrated.
NPC: Sola te… re, mere telaso doso la, soredola la tereme tedola?
{Okay then… well, what about your name, surely you can tell me that?}
Character selection: Errr….       Sote  Sola  
NPC: Dosore la reteso, me sodolate me tela reso me la fa.
{Well okay then, I think you should stay here to be safe.}
Internal dialogue: Oh here we go, they’re putting me in a cell. This is not how I saw my honeymoon ending up… What will I do if Charlie doesn’t find me!?

  
Police Station: 2 Police officer
Dosore la reteso, me sodolate me tela reso me la fa.
{Well okay then, I think you should stay here to be safe.}

(Repeat  Police Station 2) if you try to speak with them again

Timer for roughly 10 seconds after Police Station 1 ends for wife to find you.

Police Station: 4 Wife (Bad ending) (Angry face)
[Wife enters]
NPC dialogue: What have you been doing!? The police officer came to get me. Said you’d been propositioning all the people in the village! 
Character question: No, I wasn’t. The clerk at the hotel taught me yes and no. I was just trying to talk to people and find you. I’m so hungover!
NPC dialogue: I'll try and help you explain this but you have a lot of apologising to do!
[Wife exits]
Internal dialogue: Not the best way to start matrimonial bliss… Oh well.
