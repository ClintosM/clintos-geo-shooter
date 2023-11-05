/// @description desc
draw_self()
draw_sprite_ext(sEnemyHealthBackground, 0, x, y - 32, 1, 1, 0, c_white, 1)
draw_sprite_ext(sEnemyHealthBar, 0, x -23, y - 32, (hp / maxHp), 1, 0, c_white, 1)
draw_sprite_ext(sEnemyHealthFrame, 0, x, y - 32, 1, 1, 0, c_white, 1)