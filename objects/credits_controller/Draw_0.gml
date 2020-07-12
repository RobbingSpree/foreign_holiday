draw_set_font(title_font);
draw_set_halign(fa_center);
draw_text(room_width/2,room_height/5,"Credits");
draw_set_font(title_sub_font);
draw_set_halign(fa_right);
draw_text(room_width/3,room_height/3+25,"Programming:");
draw_text(room_width/3,room_height/3+100,"Art:");
draw_text(room_width/3,room_height/3+175,"Story/Writing:");
draw_text(room_width/3,room_height/3+250,"Trainee Programmer:");
draw_text(room_width/3,room_height/3+325,"Design:");
draw_text(room_width/3,room_height/3+400,"QA:");

if !show_social
{
	draw_set_halign(fa_left);
	draw_text(room_width/3*2,room_height/3+25,"Robert Tester");
	draw_text(room_width/3*2,room_height/3+100,"Nikarra Palmer-Simmons");
	draw_text(room_width/3*2,room_height/3+175,"Claire Emily");
	draw_text(room_width/3*2,room_height/3+250,"Tim May");
	draw_text(room_width/3*2,room_height/3+325,"See Listed Above");
	draw_text(room_width/3*2,room_height/3+400,"Ellen [REDACTED]");
} else {
	draw_set_halign(fa_left);
	draw_text(room_width/3*2,room_height/3+25,"Robert Tester");
	draw_text(room_width/3*2,room_height/3+100,"Nikarra Palmer-Simmons");
	draw_text(room_width/3*2,room_height/3+175,"Claire Emily");
	draw_text(room_width/3*2,room_height/3+250,"Tim May");
	draw_text(room_width/3*2,room_height/3+325,"See Listed Above");
	draw_text(room_width/3*2,room_height/3+400,"Ellen [REDACTED]");
}