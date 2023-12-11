/// @description desc

switch(elementType) {
	
	case "Pyric":
		elementColor = c_red;
		var basicPattern = global.basePattern.elements.pyric
		var patternName = "Pyric Shot"
		break
		
	case "Sonic":
		elementColor = c_aqua;
		var basicPattern = global.basePattern.elements.sonic
		var patternName = "Sonic Shot"
		break
		
	case "Cosmic":
		elementColor = c_purple;
		var basicPattern = global.basePattern.elements.cosmic
		var patternName = "Cosmic Shot"
		break;
		
	case "Runic":
		elementColor = c_green;
		var basicPattern = global.basePattern.elements.runic
		var patternName = "Runic Shot"
		break;
}

basePattern = new initFirePattern(basicPattern, patternName, 0, true)