/// @description Setup textbox

x1=room_width/5;
y1=y;
x2=room_width/5*4;
y2=y+200;
x=x1;
y=y1;

str = "";
draw_set_font(defont);
modifier = 0;
margin = 30;
new_row = 30;
cutoff = 0;
timer = 0;
instant = false;
box_wid = x2-x1 - margin*2;

enum loc
{
	hotel,
	market,
	alley,
	cafe,
	pstation,
	park,
	void
}

text = 0;
question = false;

//question object positions
quest_y = y1+50;
pt3_a = x1+30;
pt3_b = pt3_a+210;
pt3_c = pt3_b+210;
pt2_a = x1+50;
pt2_b = pt2_a+350;
