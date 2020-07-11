/// @description Insert description here
// You can write your code in this editor

if dx != x
{
	var tx = lerp(x,dx,0.07);
	if abs(dx-x) <1
	{
		x+=(round(abs(dx-x)))/2
	} else 
		x=tx;
	if abs(x-dx) < 0.5
	{
		x=dx;
	}
}