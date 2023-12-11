
gml_pragma("global", "initBasePatterns()")

/*function initBasePatternsViaJSON() {
	decodedPatterns = json_decode(basePatterns.json)
}*/

function initBasePatterns() { //Function referenced in pragma function
	global.basePattern = {
		elements : {
		    pyric : {
		        typeId : "Pyric",
				name : "",
		        firerate : 5,
				dmg : 1,
		        sprite : sFiringModeNova,  
		        passivePerk : 0,
		        bulletAmount : 0,
		        patternColor : c_red
		    },
		    sonic: {
		        typeId : "Sonic",
				name : "",
		        firerate : 5,
				dmg : 1,
		        sprite : sFiringModeSonic,
		        passivePerk : 0,
		        bulletAmount : 0,
		        patternColor : c_aqua
		    },
		    runic: {
		        typeId : "Runic",
				name : "",
				dmg : 1,
		        firerate: 1,
		        sprite : sFiringModeRunic,  
		        passivePerk : 0,
		        bulletAmount : 0,
		        patternColor : c_green
		    },
		    cosmic: {
		        typeId : "Cosmic",
				name : "",
		        firerate : 10,
				dmg : 1,
		        sprite : sFiringModeCosmic,
		        passivePerk : 0,
		        bulletAmount : 0,
		        patternColor : c_purple
		    }
		}
	}
}

function setWeightedRandomness(_biasValue, _biasMultiplier, _allValuesUpTo) {
    var weightedArray = []
    var index = 0;

    for (var i = 1; i <= _allValuesUpTo; i++) {
        if (i == _biasValue) {
            for (var j = 0; j < _biasMultiplier; j++) {
                weightedArray[index++] = i
            }
        } else {
            weightedArray[index++] = i
        }
    }
    
    var randomIndex = irandom_range(0, index - 1)
	show_debug_message(weightedArray)
    return weightedArray[randomIndex]
}

function initFirePattern(_elementStruct, _name, overrides, _isRandomValsEnabled = false) constructor {
	
	dmg = _isRandomValsEnabled ? setWeightedRandomness(1, 5, 10) : _elementStruct.dmg
    typeId = _elementStruct.typeId
    firerate = _isRandomValsEnabled ? irandom_range(1, 30) : _elementStruct.firerate
    sprite = _elementStruct.sprite
    passivePerk = _elementStruct.passivePerk
    bulletAmount = _isRandomValsEnabled ? setWeightedRandomness(1, 4, 10) : _elementStruct.bulletAmount	
    patternColor = _elementStruct.patternColor
    name = _name

    if (overrides != undefined) {
        // Apply overrides here
        // Example: if (overrides.firerate != undefined) firerate = overrides.firerate;
    }
	
	show_debug_message(_elementStruct)

}