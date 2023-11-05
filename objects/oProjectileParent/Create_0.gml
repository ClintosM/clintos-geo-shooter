/// @description desc
event_inherited()


bulletProperties = oPlayerInventoryManager.shootingModeSlots[oPlayerInventoryManager.currentMode]

//implementation 1
bulletColor = bulletProperties != undefined ? oPlayerInventoryManager.shootingModeSlots[oPlayerInventoryManager.currentMode].bulletColor : c_white
//implementation 2
bulletColor = bulletProperties != undefined ? bulletProperties.bulletColor : c_white

oCamera.shake = shake
randomSpray = irandom_range(-spray, spray);
oPlayer.bulletCharge -= bulletChargeConsumption

mouse_dir = point_direction(oPlayer.x, oPlayer.y, oCursor.x, oCursor.y)
len_DirX = lengthdir_x(spd, mouse_dir + randomSpray - (randomSpray / 2));
len_DirY = lengthdir_y(spd, mouse_dir + randomSpray - (randomSpray /2));
phy_rotation = -mouse_dir
phy_fixed_rotation = true
physics_apply_impulse(x, y, len_DirX, len_DirY)
direction = point_direction(x, y, oCursor.x, oCursor.y)