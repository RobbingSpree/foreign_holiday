/// @description Insert description here
// You can write your code in this editor



if ease_in 
{
	var ty = lerp(y,jy,0.07);
	if abs(ty-y) <1
		y+=0.5;
	else y=ty;
	if abs(y-jy) < 0.5
	{
		y=jy;
		ease_in=false;
		timer = timer_max;
	}
}

if ease_out
{
	y=lerp(y,ry,0.05);
	if abs(y-ry) < 2
	{
		y=ry;
		ease_out=false;
	}
}

if timer>0 && !ease_in
	timer--
if timer <=0 && !ease_in
	ease_out=true;