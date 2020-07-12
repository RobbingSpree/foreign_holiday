/// @description Insert description here
// You can write your code in this editor

draw_self();

if bg_actors != -1
{
	switch global.scene
	{
		case loc.hotel: break; //none
		case loc.cafe: break; //9 & 15
		case loc.park: break; //8 & 11
		case loc.alley: break; //1 & 5
		case loc.pstation: break;
		case loc.market: draw_sprite_ext(scene_bg_actors,3,0,0,0.5,0.5,0,c_white,image_alpha); draw_sprite_ext(scene_bg_actors,7,0,0,0.5,0.5,0,c_white,image_alpha); break; //3 & 7
	}
	draw_sprite_ext(scene_bg_actors,bg_actors,0,0,0.5,0.5,0,c_white,image_alpha);
}

draw_text(20,80,bg_actors);