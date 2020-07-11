/// @description Insert description here
// You can write your code in this editor

nine_slice_draw(txt_box_spr,x1,y1,x2,y2);
draw_set_color(c_black);
draw_text_ext(x+margin,y+margin,str,new_row,box_wid);
draw_set_color(c_white);

draw_text(20,20,string((x2-x1)/3));