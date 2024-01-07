/// @description desc
draw_self()
event_inherited()
currentX = -36 //+ (sprite_width)
yPos = y + (sprite_height / 1.6)

for (i = 0; i < array_length(upcomingWaves); i++) {
	currentX += 18
	draw_sprite_ext(sUpcomingPattern, 0, x + currentX, yPos, 1, 1, 0, getElementColor(upcomingWaves[i]), 1)
}
/*
#region Round Timer
draw_set_font(fntPlayerStats)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text_transformed(oPlayer.x, oPlayer.y - 32, "Time Remaining: " + string(waveTimer / 60), 1, 1, 0)
draw_set_halign(fa_left)
#endregion
*/