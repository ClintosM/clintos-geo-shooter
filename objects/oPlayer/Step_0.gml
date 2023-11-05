/// @description desc

scr_movement()
shootProjectile()

text_x += (x - text_x + 24) * delayFactor
text_y += (y - text_y + 24) * delayFactor

sinWave += 0.1; 

if keyboard_check_released(vk_backspace) {
	room_restart()
}

//direction = point_direction(x, y, oCursor.x, oCursor.y)