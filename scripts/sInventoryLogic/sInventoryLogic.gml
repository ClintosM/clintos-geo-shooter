function updateHotbarSlot() {
    changeMade = false
    var dir = 0
    var loopCounter = 0
    var initialMode = currentMode

    if mouse_wheel_up() {
        dir = 1
    } else if mouse_wheel_down() {
        dir = -1
    }
    
    if (dir != 0) {
        while (!changeMade && loopCounter < array_length(shootingModeSlots)) {
            loopCounter++

            currentMode += dir

            if (currentMode > array_length(shootingModeSlots) - 1) {
                currentMode = 0
            } else if (currentMode < 0) {
                currentMode = array_length(shootingModeSlots) - 1
            }

            if (shootingModeSlots[currentMode] != undefined || 0) {
                changeMade = true
            }
        }
    }

    // Compare initialMode to currentMode to see if a change was actually made
    if (changeMade && initialMode != currentMode) {
        updatePlayerFiringMode()
        audio_play_sound(sndWeaponTypeSwap, 1, 0)
    }
}



function updatePlayerFiringMode() {
    if (shootingModeSlots[currentMode] != undefined || 0) {
        oPlayer.rpm = shootingModeSlots[currentMode].firerate
        oPlayer.firerateCooldown = oPlayer.rpm
        oPlayer.bulletAmount = shootingModeSlots[currentMode].bulletAmount	
    } else {
		oPlayer.rpm = 60
		oPlayer.firerateCooldown = oPlayer.rpm
		oPlayer.bulletAmount = 1
	}
}