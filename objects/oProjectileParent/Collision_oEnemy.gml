/// @description desc
instance_destroy()

// TODO: Process different element types for shield multipliers
var processedDmg = bulletDamage

if (other.shieldEnabled) {
	
	if (other.shieldHp < bulletDamage) {
		var remainderDamage = bulletDamage - other.shieldHp	
		other.shieldHp -= bulletDamage
		other.hp -= remainderDamage 
	}
	
	other.shieldHp -= bulletDamage
} else {
	other.hp -= bulletDamage
}