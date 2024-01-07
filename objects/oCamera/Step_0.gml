/// @description desc

if(keyboard_check_released(ord("Q"))) {
	shakeEnabled = !shakeEnabled 
}

if instance_exists(oPlayer) {
	CameraLogic()
}