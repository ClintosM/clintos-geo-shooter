/// @description desc

if (hp <= 0) {
	instance_destroy()
}

if (shieldHp <= 0) {
	shieldEnabled = false	
}

if distance_to_object(oPlayer) < sightRange {
	chasePlayer = true
}

if (chasePlayer) {
	
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);	
	hspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);	
	x += hspd;
	y += yspd;	
}

if (chasePlayer) {
	if (distance_to_object(oPlayer) > sightRange * 2.5) {
		chasePlayer = false
	}
}
