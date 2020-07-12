/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_xscale=0.5;
image_yscale=0.5;
timer = 20;
timer_max = timer;
change = 0.05;

flag = false;
new_bg = -1;

global.scene = loc.void;
image_index = global.scene;

change_scene(global.scene);

bg_actors_1 = -1;
bg_actors_2 = -1;