/// @description desc

// Inherit the parent event
event_inherited();

if (isOn) {
	waveTimer -= 1	
}

if (displayInfo) && (keyboard_check_pressed(ord("E"))) {
	isOn = true
}