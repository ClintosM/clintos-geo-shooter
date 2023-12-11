function shootProjectile() {
	if mouse_check_button(mb_left) {
		if shootingInterval {
			firerateCooldown = rpm
			
			if bulletAmount > 1 {
				for (i = 0; i < bulletAmount; i++) {
					instance_create_depth(x, y, 2, oBullet)
				}
			} else {
				instance_create_depth(x, y, 2, oBullet)
			}
			shootingInterval = false
		}		
	}
	
			
	if (firerateCooldown > 0 && shootingInterval == false) {
		firerateCooldown -= 1
	}
		
	if (firerateCooldown == 0) {
		shootingInterval = true	
	}
}

function fireRateToRPM(_fireRate) {
    // Convert the fire rate value to RPM (assuming 60 fps)
    return (60 / _fireRate) * 60;
}