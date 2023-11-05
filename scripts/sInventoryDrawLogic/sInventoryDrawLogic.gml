function drawPatternStats(text, x, y, scale, color, shadowColor, shadowOffset) {
    // Draw shadow
    draw_set_color(shadowColor);
    draw_text_transformed(x + shadowOffset, y + shadowOffset, text, scale, scale, 0);
    // Draw text
    draw_set_color(color);
    draw_text_transformed(x, y, text, scale, scale, 0);
}

function drawFireRateStatWithBar(statName, statValue, maxValue, yPos, scale) {
    drawPatternStats("RPM: " + string(ceil(fireRateToRPM(statValue))), 16, yPos, scale, c_white, c_black, scale);
    yPos += 20
    
    var barWidth = 200
    var barHeight = 10
    var barX = 16
    var barColor = patternSlots[currentMode].patternColor

    var inverseValue = maxValue - statValue + 1
    var filledWidth = (inverseValue / maxValue) * barWidth

    draw_set_color(c_white)
    draw_rectangle(barX, yPos + 15, barX + barWidth, yPos + barHeight, false)
    
    draw_set_color(barColor)
    draw_rectangle(barX, yPos + 15, barX + filledWidth, yPos + barHeight, false)

    yPos += barHeight + 15
    
    return yPos
}

function drawStatWithBar(statName, statValue, maxValue, yPos, scale) {
    drawPatternStats(statName + ": " + string(statValue), 16, yPos, scale, c_white, c_black, scale)
    yPos += 20
	
    var barWidth = 200
    var barHeight = 10
    var barX = 16
    var barColor = patternSlots[currentMode].patternColor
    var filledWidth = (statValue / maxValue) * barWidth

    draw_set_color(c_white)
    draw_rectangle(barX, yPos + 15, barX + barWidth, yPos + barHeight, false)
    

    draw_set_color(barColor)
    draw_rectangle(barX, yPos + 15, barX + filledWidth, yPos + barHeight, false)

    yPos += barHeight + 15
    
    return yPos
}