//draw starfield
draw_set_color(c_black);
draw_rectangle(0,0,gui_w,gui_h,false);
draw_set_colour(c_white);
for(var p = 0; p < stars; p++)
{
   draw_point(px[p],py[p]);
}
//draw text
draw_set_halign(fa_center);
draw_set_color(c_yellow);

for (var i = 0; i < 30; i++)
{
   var yy = gui_h - (timer-i*spacing) + min(gui_h, 0.25 *(timer-i*spacing)*(timer-i*spacing) / gui_h);
    if ((yy > -spacing) && (yy < gui_h))
    {
        draw_text_transformed(0.5 * gui_w, yy, text[i], yy/gui_h, yy/gui_h, 0);
        finished = false;
    }
}
draw_set_color(c_white);
//draw_text(20,20,counter);
