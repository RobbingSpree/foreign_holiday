/// @description Insert description here
// You can write your code in this editor
counter = 0;
spd = 1;
timer = 0;
for (var i = 25; i > -1; i--)
{
	text[i] = "Line "+string(i+1)+": blah blah blah blah blah blah blah";
	text[i] = get_crawl_line(i);
}
gui_w = room_width;
gui_h = room_height;

text_speed = 0.25;
spacing = 20;
finished = false;

stars = 100;
for (var i = stars-1; i > -1; i--)
{
   px[i] = irandom(gui_w);
    py[i] = irandom(gui_h);
}
draw_set_font(title_crawl_font);

//from 
//https://forum.yoyogames.com/index.php?threads/creating-an-intro-screen.12788/