/// @description Insert description here
// You can write your code in this editor

if mouse_over(self) && mouse_check_button_pressed(mb_left) && global.scene != index
{
	global.scene = index;
	change_scene(index);
}

if global.scene == index
	image_index=1;
else 
	image_index = 0;

title = get_scene_title(index);

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
