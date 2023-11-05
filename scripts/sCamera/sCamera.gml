
function CameraLogic(){

	var tpx, tpy;

	move_towards_point(mouse_x, mouse_y, 0);
	tpx = oPlayer.x + lengthdir_x(min(64, distance_to_point(mouse_x, mouse_y)), direction);
	tpy = oPlayer.y + lengthdir_y(min(64, distance_to_point(mouse_x, mouse_y,)), direction);


	x += (tpx - x) / 8; //10; 
	y += (tpy - y) / 8; //10;

	
	var vpos_x = camera_get_view_x(view_camera[target_view]);
	var vpos_y = camera_get_view_y(view_camera[target_view]);
	var vpos_w = camera_get_view_width(view_camera[target_view]) * 0.5;
	var vpos_h = camera_get_view_height(view_camera[target_view]) * 0.5;
	
	var new_x = lerp(vpos_x, oCamera.x - vpos_w, 0.8);
	var new_y = lerp(vpos_y, oCamera.y - vpos_h, 0.8);

	camera_set_view_pos(view_camera[target_view], new_x +  + random_range(-shake, shake), new_y +  + random_range(-shake, shake));
	camera_set_view_angle(view_camera[target_view], + random_range(-shake, shake) * 0.5);
	
	shake *= rate

}

