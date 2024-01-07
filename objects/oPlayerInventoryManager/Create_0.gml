/// @description desc
randomize()

isInventoryOpen = false

#region Hotbar

currentMode = 0

var basePyricElementStruct = global.basePattern.elements.pyric
var baseSonicElementStruct = global.basePattern.elements.sonic
var baseRunicElementStruct = global.basePattern.elements.runic
var baseCosmicElementStruct = global.basePattern.elements.cosmic
var baseAquaticElementStruct = global.basePattern.elements.aquatic

var pyricPattern = new initFirePattern(basePyricElementStruct, "Pyric Shot", 0, true)
var runicPattern = new initFirePattern(baseRunicElementStruct, "Runic Shot", 0, true)
var sonicPattern = new initFirePattern(baseSonicElementStruct, "Sonic Shot", 0, true)
var cosmicPattern = new initFirePattern(baseCosmicElementStruct, "Cosmic Shot", 0, true)
var aquaticPattern = new initFirePattern(baseAquaticElementStruct, "Aquatic Shot", 0, true)

//Hotbar
patternSlots = [undefined, undefined]

updatePlayerFiringMode();

#endregion

#region Inventory

collectedItems = [
	{
		itemID : 000,
		contents : {
			itemName : "ITEM 000",
			rarity : "common",
			quantity : 1
		}
	},
	{
		itemID : object_get_name(oPrimalEssence),
		contents : {
			itemName : "Primal Essence",
			rarity : "common",
			quantity : 1
		}
	},
	{
		itemID : 002,
		contents : {
			itemName : "ITEM 002",
			rarity : "common",
			quantity : 1
		}
	}

]

#endregion