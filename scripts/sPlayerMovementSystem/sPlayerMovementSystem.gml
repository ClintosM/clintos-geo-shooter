function scr_movement() {	

	upKey = keyboard_check(ord("W"));
	downKey = keyboard_check(ord("S"));
	leftKey = keyboard_check(ord("A"));
	rightKey = keyboard_check(ord("D"));				

	var hmove = (rightKey - leftKey) * spd;
	hspd = scr_acceleration(hspd, hmove, accel);
	phy_position_x += hspd;
	
	var vmove = (downKey - upKey) * spd;
	vspd = scr_acceleration(vspd, vmove, accel);	
	phy_position_y += vspd;

}

function scr_acceleration(a, b, amount) {

if (a < b) {
    a += amount
    if (a > b) { return b }
} else {
    a -= amount
    if (a < b) { return b }
}
return a;
}
