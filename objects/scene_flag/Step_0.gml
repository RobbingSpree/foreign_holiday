/// @description Insert description here
// You can write your code in this editor

if ease_in 
{
	y=lerp(y,jy,0.05);
	if abs(y-jy) < 2
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

if timer>0
	timer--
if timer <=0
	ease_out=true;