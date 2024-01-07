// Assign bullet properties
bulletProperties = oPlayerInventoryManager.patternSlots[oPlayerInventoryManager.currentMode]
bulletColor = bulletProperties != undefined ? bulletProperties.patternColor : c_white
bulletDamage = bulletProperties != undefined ? bulletProperties.dmg : 1
oCamera.shake = shake
oPlayer.bulletCharge -= bulletChargeConsumption

dir = point_direction(x, y, oCursor.x, oCursor.y);	
adjustedDir = dir + spray - (spray / 2)
xspd = lengthdir_x(spd, adjustedDir) 
yspd = lengthdir_y(spd, adjustedDir)
direction = dir

