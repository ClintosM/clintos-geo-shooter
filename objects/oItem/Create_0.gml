// Inherit the parent event
event_inherited()

canPickup = false

properties = {
	itemID : object_get_name(object_index),
	contents : {
		itemName : inspectName,
		description : inspectDescription,
		rarity : rarity,
		quantity : quantity
	}
}