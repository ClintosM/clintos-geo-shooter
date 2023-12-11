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

for (xPos = 40; xPos < array_length(patternSlots) * 65.2; xPos += 70) {
    firingModeSprite = (patternSlots[counter] == undefined) ? sEmptyFiringMode : patternSlots[counter].sprite
    var col = (counter != currentMode) ? c_gray : c_white
    var scale = (counter != currentMode) ? 3 : 4
    draw_sprite_ext(firingModeSprite, 0, xPos, yPos, scale, scale, 0, col, (counter != currentMode) ? alpha : 1)
    counter += 1;
}

#endregion

#region Draw Pattern Stats

var activePattern = patternSlots[currentMode];
var yPos = 84;
var maxFirerate = 60; // Assuming 10 is the maximum firerate for scaling the bar
var maxDamage = 10; // Assuming 100 is the maximum damage for scaling the bar
var maxBullets = 20; // Assuming 20 is the maximum bullets for scaling the bar

if (activePattern != undefined) {

    drawPatternStats(activePattern.name, 16, yPos, 2, activePattern.patternColor, c_black, 2);
    yPos += 54; 
    
    yPos = drawFireRateStatWithBar("Fire Rate", activePattern.firerate, maxFirerate, yPos, 1);
    yPos = drawStatWithBar("Damage", activePattern.dmg, maxDamage, yPos, 1);
    yPos = drawStatWithBar("Bullets", activePattern.bulletAmount, maxBullets, yPos, 1);
    
    //drawPatternStats("Passive: " + string(activePattern.passivePerk), 16, yPos, 1, c_white, c_black, 2);
    //yPos += 30; 
} else {
	drawPatternStats("Void Pattern", 16, yPos, 2, c_white, c_black, 2);
}

#endregion