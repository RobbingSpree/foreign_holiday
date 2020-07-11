/// @description Insert description here
// You can write your code in this editor

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

global.scene = loc.hotel;

enum loc
{
	hotel,
	market,
	alley,
	cafe,
	pstation,
	park
}

text = 0;
question = false;

var thirds = (x2-x1) / 3;
quest_y = y1+50;
pt3_a = x1;
pt3_b = x1 + thirds;
pt3_c = x1 + thirds*2;
//debug
pt3_a = x1+30;
pt3_b = pt3_a+210;
pt3_c = pt3_b+210;
var half = (x2-x1/2)+ 50;
pt2_a = x1+50;
pt2_b = x1+ half;
//debug
pt2_a = x1+50;
pt2_b = pt2_a+350;
