function updateHotbarSlot() {
	with(oPlayerInventoryManager) {
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
	        while (!changeMade && loopCounter < array_length(patternSlots)) {
	            loopCounter++

	            currentMode += dir

	            if (currentMode > array_length(patternSlots) - 1) {
	                currentMode = 0
	            } else if (currentMode < 0) {
	                currentMode = array_length(patternSlots) - 1
	            }

	            if (patternSlots[currentMode] != undefined || 0) {
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
}

function updatePlayerFiringMode() {
	with(oPlayerInventoryManager) {
	    if (patternSlots[currentMode] != undefined || 0) {
	        oPlayer.rpm = patternSlots[currentMode].firerate
	        oPlayer.firerateCooldown = oPlayer.rpm
	        oPlayer.bulletAmount = patternSlots[currentMode].bulletAmount	
	    } else {
			oPlayer.rpm = 60
			oPlayer.firerateCooldown = oPlayer.rpm
			oPlayer.bulletAmount = 1
		}
	}
}