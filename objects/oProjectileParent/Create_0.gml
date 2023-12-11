/// @description desc
// Assign bullet properties
bulletProperties = oPlayerInventoryManager.patternSlots[oPlayerInventoryManager.currentMode];
bulletColor = bulletProperties != undefined ? bulletProperties.patternColor : c_white;

// Set camera shake
oCamera.shake = shake;

// Decrease bullet charge from the player
oPlayer.bulletCharge -= bulletChargeConsumption;

// Calculate the bullet movement
var movement = calculateMovement(spd, spray, oPlayer.x, oPlayer.y, oCursor.x, oCursor.y);

// Apply the calculated movement and direction to the bullet
len_DirX = movement.dirX;
len_DirY = movement.dirY;
phy_rotation = movement.rotation;
phy_fixed_rotation = true;
physics_apply_impulse(x, y, len_DirX, len_DirY);

// Set the bullet's direction towards the cursor
direction = point_direction(x, y, oCursor.x, oCursor.y);