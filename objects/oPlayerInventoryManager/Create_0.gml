/// @description desc

isEnabled = false


#region Hotbar

currentMode = 0

var pyricBasic = new shootingMode("Flame Rounds", "Pyric", sFiringModeNova, 0, 0, 1, 1, c_red)
var sonicBasic = new shootingMode("Sound Burst", "Sonic", sFiringModeSonic, 0, 0, 25, 5, c_aqua)
var cosmicBasic = new shootingMode("Astral Barrage", "Cosmic", sFiringModeCosmic, 0, 0, 5, 3, c_purple)
var runicBasic = new shootingMode("Magic Stream", "Runic", sFiringModeRunic, 0, 0, 30, 10, c_green)

shootingModeSlots = [pyricBasic, sonicBasic, undefined, undefined, runicBasic, undefined, cosmicBasic, undefined]

updatePlayerFiringMode();

#endregion

