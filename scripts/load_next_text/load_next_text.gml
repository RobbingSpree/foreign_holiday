function load_next_text(argument0, argument1) {

	var scene = argument0;
	var line = argument1;

	switch scene
	{
		case loc.hotel: text_box.str = hotel_line(line); break;
		case loc.market: text_box.str = market_line(line); break;
		case loc.park: text_box.str = park_line(line); break;
		case loc.alley: text_box.str = alley_line(line); break;
		case loc.cafe: text_box.str = cafe_line(line); break;
		case loc.pstation: text_box.str = station_line(line); break;
		case loc.void: text_box.str = void_line(line); break;
	
	
		default: text_box.str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus viverra varius porttitor. Nullam vestibulum elementum nisi quis consectetur. Aliquam iaculis elementum dolor, et aliquet mauris ornare id. Curabitur ante ipsum, auctor quis orci non, porttitor lobortis est. Ut libero dolor, efficitur non scelerisque ut, tincidunt eu magna. Curabitur tincidunt nec enim a dignissim. Sed aliquam elit nec sem cursus finibus. Morbi a lacus risus. Pellentesque faucibus nec lorem quis aliquet. Maecenas mauris dolor, sagittis quis est vel, semper condimentum turpis."; 
	
	}




}
