/// @description desc

if instance_exists(oPlayerInventoryManager) {
	oPlayerInventoryManager.patternSlots[oPlayerInventoryManager.currentMode] = basePattern
	updatePlayerFiringMode()
	instance_destroy()
}
