
function calculateMovement(_spd, _spray, _originX, _originY, _targetX, _targetY) {
	
    var randomSpray = irandom_range(-_spray, _spray);
    var dir = point_direction(_originX, _originY, _targetX, _targetY);
    var adjustedDir = dir + randomSpray - (randomSpray / 2);
    var lenDirX = lengthdir_x(_spd, adjustedDir);
    var lenDirY = lengthdir_y(_spd, adjustedDir);

    return { dirX: lenDirX, dirY: lenDirY, rotation: -dir };
}