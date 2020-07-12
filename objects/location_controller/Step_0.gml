/// @description Insert description here
// You can write your code in this editor

if mouse_over(self) && mouse_check_button_pressed(mb_left)
	hide = !hide

/*
if tutorial_hide 
	x = dx + 300;
else if x!= dx && !stopped
{
	var tx = lerp(x,dx,0.07);
	if abs(dx-x) <1
	{
		x+=(round(abs(dx-x)))/2
	} else 
	{
		x=tx;
		stopped = true;
	}
}	
	*/
if hide == false
{
	loc_list.dx = x;
	with loc_item
		if hidden == false
			dx = loc_list.dx+31;
} else {
	loc_list.dx = x+500;
	with loc_item
		if hidden == false
			dx = loc_list.dx+31;
}