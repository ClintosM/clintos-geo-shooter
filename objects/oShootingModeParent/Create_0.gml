/// @description desc
event_inherited()
switch(elementType) {
	
	case "Pyric":
		elementColor = c_red
		var basicPattern = global.basePattern.elements.pyric
		break
		
	case "Sonic":
		elementColor = c_aqua
		var basicPattern = global.basePattern.elements.sonic
		break
		
	case "Cosmic":
		elementColor = c_purple
		var basicPattern = global.basePattern.elements.cosmic
		break;
		
	case "Runic":
		elementColor = c_green
		var basicPattern = global.basePattern.elements.runic
		break
}

basePattern = new initFirePattern(basicPattern, inspectName, 0, true)