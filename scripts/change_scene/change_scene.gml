

global.scene = argument0;

scene_flag.ease_in=true;
scene_flag.ease_out=false;
scene_flag.str = get_scene_title(argument0);
location_controller.hide=true;
bg_controller.flag = true;
bg_controller.new_bg = global.scene;
text_box.text = 0;
text_box.actor_leave = true;
text_box.convo_end = false;
text_box.str = "";
with text_choice
{
	instance_destroy(self);
}