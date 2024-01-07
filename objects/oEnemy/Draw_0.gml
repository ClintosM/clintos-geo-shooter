/// @description desc
draw_self()

draw_set_color(c_white)

if (chasePlayer) {
	draw_sprite_ext(sEnemyHealthBackground, 0, x, y - 32, 1, 1, 0, c_white, 1)
	draw_sprite_ext(sEnemyHealthBar, 0, x -23, y - 32, max(0, (hp / maxHp)), 1, 0, c_white, 1)
	draw_sprite_ext(sEnemyHealthFrame, 0, x, y - 32, 1, 1, 0, c_white, 1)
}

if (shieldEnabled) {
	if (chasePlayer) {
		draw_sprite_ext(sEnemyShieldBar, 0, x -23, y - 32, max(0, (shieldHp / startShieldHp)), 1, 0, shieldColor, 1)
	}
	draw_sprite_ext(sBasicEnemyShield, 0, x, y, 1, 1, 0, shieldColor, 1)
}
