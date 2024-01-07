function inspectObject() {
	var inspectName;
	var inspectDescription;
	var inspectQuantity = "";
	var inspectItemCollect = ""
	var inspectRarity;
	
	switch(object_get_parent(object_index)) {
	case oInspectable:
		inspectName = self.inspectName
		inspectDescription = self.inspectDescription
		break
	
	case oItem:
		inspectDescription = self.properties.contents.description
		inspectQuantity = "x" + string(self.properties.contents.quantity)
		inspectName = self.properties.contents.itemName + " (" + inspectQuantity + ")"
		inspectRarity = self.properties.contents.rarity
		inspectItemCollect = "Press E to pick up"
		break
		
	case oShootingModeParent:
		inspectName = self.inspectName + " (" + self.elementType + ")"
		inspectDescription = self.inspectDescription
		inspectItemCollect = "Press E to pick up"
		break
	}
	
	//Drawing to screen
	draw_set_font(fntPlayerStats)
	draw_set_color(c_white)
	
	draw_text_transformed(mouse_x + 24, mouse_y - 16, inspectName, 1, 1, 0)
	draw_text_transformed(mouse_x + 24, mouse_y, inspectDescription, 1, 1, 0)
	//draw_text_transformed(mouse_x + 24, mouse_y + 16, inspectQuantity, 1, 1, 0)
	draw_text_transformed(mouse_x + 24, mouse_y + 32, inspectItemCollect, 1, 1, 0)
}