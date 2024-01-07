// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getElementColor(element){
	var _element = string_lower(element)
	switch (_element) {
		case "pyric":
			return c_red
			break
		
		case "runic":
			return c_green
			break
			
		case "sonic":
			return c_aqua
			break
			
		case "cosmic":
			return c_purple
			break
			
		default:
			return c_white
			break
	}
}