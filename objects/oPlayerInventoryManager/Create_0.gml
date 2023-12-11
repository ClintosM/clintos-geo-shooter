/// @description desc
randomize()

isEnabled = false

#region Hotbar

currentMode = 0

var basePyricElementStruct = global.basePattern.elements.pyric
var baseSonicElementStruct = global.basePattern.elements.sonic
var baseRunicElementStruct = global.basePattern.elements.runic
var baseCosmicElementStruct = global.basePattern.elements.cosmic

var pyricPattern = new initFirePattern(basePyricElementStruct, "Pyric Shot", 0, true)
var runicPattern = new initFirePattern(baseRunicElementStruct, "Runic Shot", 0, true)
var sonicPattern = new initFirePattern(baseSonicElementStruct, "Sonic Shot", 0, true)
var cosmicPattern = new initFirePattern(baseCosmicElementStruct, "Cosmic Shot", 0, true)

patternSlots = [undefined]

show_debug_message(patternSlots)

updatePlayerFiringMode();

#endregion

