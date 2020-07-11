/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<6; i++)
{
	var item = instance_create_layer(x,y+30+60*i,"higher_instances",loc_item);
	item.hidden = false;
}