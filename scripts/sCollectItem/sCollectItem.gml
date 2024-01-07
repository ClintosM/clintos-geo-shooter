// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collectItem(){
			if (keyboard_check_pressed(ord("E"))) {
			switch (object_get_parent(object_index)) {
				case oItem:		
					var collectedItems = oPlayerInventoryManager.collectedItems
					
					if (array_length(collectedItems) == 0) {
						array_push(collectedItems, properties)
						instance_destroy()
						break
					}
					
					for (pos = 0; pos < array_length(collectedItems); pos++) {
						show_debug_message("pos: " + string(pos) + "arr len: "  + string(array_length(collectedItems)))
						if (collectedItems[pos].itemID == properties.itemID) {
							collectedItems[pos].contents.quantity += properties.contents.quantity	
							break
						}
	
 						if (pos == array_length(collectedItems)) {
							if (collectedItems[pos].itemID == properties.itemID) {
								collectedItems[pos].contents.quantity += properties.contents.quantity	
								break
							} else {
								array_push(collectedItems, properties)
								show_debug_message(collectedItems)
							}
						}
					}
					instance_destroy()
					break
				
				case oShootingModeParent:
					if instance_exists(oPlayerInventoryManager) {
						for (i = 0; i < array_length(oPlayerInventoryManager.patternSlots); i++) {
							if (oPlayerInventoryManager.patternSlots[i] == undefined) {
								oPlayerInventoryManager.patternSlots[i] = basePattern	
								break
							}
						}
						updatePlayerFiringMode()
						instance_destroy()
					}
					break
			}
		
		}
	
}/*
		if (keyboard_check_pressed(ord("E"))) {
			show_message("item")
			var collectedItems = oPlayerInventoryManager.collectedItems

			for (pos = 0; pos < array_length(collectedItems); pos++) {
				if (collectedItems[pos].itemID == properties.itemID) {
					collectedItems[pos].contents.quantity += properties.contents.quantity	
					break
				}
	
				if (pos == array_length(collectedItems)) {
					if (collectedItems[pos].itemID == properties.itemID) {
						collectedItems[pos].contents.quantity += properties.contents.quantity	
						break
					} else {
						array_push(collectedItems, properties)
					}
				}
			}
			instance_destroy()
		}
}
*/