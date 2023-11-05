/// @description desc

if (isEnabled) {
	draw_sprite_ext(Sprite16, 0, 0, 0, 2, 2, 0, c_white, 0.7)
}

#region Set Properties

draw_set_font(fntWeaponStats)
counter = 0
yPos = 40
var alpha
alpha = 0.5 * sin(current_time / 250) + 0.6

#endregion

#region Draw Hotbar

for (xPos = 40; xPos < array_length(shootingModeSlots) * 65.2; xPos += 70) {
    firingModeSprite = (shootingModeSlots[counter] == undefined) ? sEmptyFiringMode : shootingModeSlots[counter].sprite
    var col = (counter != currentMode) ? c_gray : c_white
    var scale = (counter != currentMode) ? 3 : 4
    draw_sprite_ext(firingModeSprite, 0, xPos, yPos, scale, scale, 0, col, (counter != currentMode) ? alpha : 1)
    counter += 1;
}

#endregion

#region Draw Shooting Mode Stats

var currentShootingMode = shootingModeSlots[currentMode]

if (currentShootingMode != undefined) {
    // Draw Name
    draw_set_color(c_black)
    draw_text_transformed(16, 86, currentShootingMode.name, 2, 2, 0)
    draw_set_color(c_white)
    draw_text_transformed(16, 84, currentShootingMode.name, 2, 2, 0)

    // Determine Color Based on Element
    switch currentShootingMode.element {
        case "Pyric":
            color = c_red
            break	
        case "Sonic":
            color = c_aqua
            break
        case "Cosmic":
            color = c_purple
            break
        case "Runic":
            color = c_green
            break
        default:
            color = c_white
            break
    }
    
    // Draw Element
    draw_set_color(c_black)
    draw_text_transformed(16, 128, currentShootingMode.element, 2, 2, 0)
    draw_set_color(color)
    draw_text_transformed(16, 126, currentShootingMode.element, 2, 2, 0)
}

#endregion