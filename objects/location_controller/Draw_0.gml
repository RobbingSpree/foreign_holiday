/// @description Insert description here
// You can write your code in this editor

if !talking_hide 
{
	draw_self();
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(x+sprite_width/2,y+sprite_height/2,"Move");
	draw_set_color(c_white);
	draw_set_halign(-1);
	draw_set_valign(-1);
}