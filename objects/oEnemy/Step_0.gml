/// @description desc


dir = point_direction(x, y, oPlayer.x, oPlayer.y);	
hspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);	

phy_position_x += hspd;
phy_position_y += yspd;

if (hp <= 0) {
	instance_destroy()
}