/// @description desc
updateHotbarSlot()

if (keyboard_check_pressed(vk_escape)) {
	isEnabled = !isEnabled
	
	if (!isEnabled) {
		audio_play_sound(sndClick2, 2, false)
	} else {
		audio_play_sound(sndClick1, 2, false)
	}
}

