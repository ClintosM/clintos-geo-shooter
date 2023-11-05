// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shootingMode(_name, _element, _sprite, _powerChargePerk, _passivePerk, _firerate, _bulletAmount, _bulletColor = c_white) constructor {
	
	name = _name
	element = _element
	sprite  = _sprite
	firerate = _firerate
	bulletAmount = _bulletAmount
	bulletColor = _bulletColor
	passivePerk = is_array(_passivePerk) ? _passivePerk : [_passivePerk]
	powerChargePerk = is_array(_powerChargePerk) ? _powerChargePerk : [_powerChargePerk]
	
}