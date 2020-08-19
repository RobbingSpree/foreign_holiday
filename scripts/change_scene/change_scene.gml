function change_scene(argument0) {


	global.scene = argument0;

	scene_flag.ease_in=true;
	scene_flag.ease_out=false;
	scene_flag.str = get_scene_title(argument0);
	location_controller.hide=true;
	bg_controller.flag = true;
	bg_controller.new_bg = global.scene;


}
