function scr_movement() {	

	/*upKey = keyboard_check(ord("W"))
	downKey = keyboard_check(ord("S"))
	leftKey = keyboard_check(ord("A"))
	rightKey = keyboard_check(ord("D"))				

	var hmove = (rightKey - leftKey) * spd
	hspd = scr_acceleration(hspd, hmove, accel)
	x += hspd
	
	var vmove = (downKey - upKey) * spd
	vspd = scr_acceleration(vspd, vmove, accel)
	y += vspd*/

	hmove = ( -keyboard_check(ord("A")) + keyboard_check(ord("D")) ) * spd
	vmove = ( -keyboard_check(ord("W")) + keyboard_check(ord("S")) ) * spd 

	hspd = scr_acceleration(hspd, hmove, accel)	
	vspd = scr_acceleration(vspd, vmove, accel)
	
	prevX = x * hmove * sign(4)	
	prevY = y * hmove * sign(4)
		
		if !(place_meeting(x, y, oWall)) {
			var prevX = x
			var prevY = y
			x += hspd
			y += vspd
		} else {
			x = prevX
			y = prevY
		}
	
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
