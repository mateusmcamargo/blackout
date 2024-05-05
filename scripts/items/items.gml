/// @function		 item_struct(name, sprite, object, [ui_sprite])
/// @description	 Returns a struct of the item, so that it can be created on the items irray
/// @param {String}			 _name	  Name of the item
/// @param {Asset.GMSprite}  _sprite	  Sprite of the item
/// @param {Asset.GMObject}  _object	  Object of the item
/// @param {Bool}			 _collected The variable that checks if the item is collected
/// @param {Asset.GMSprite}  _ui_sprite Sprite of the item drawn in the ui 

// Examples
//		in the obj_game Create Event:
//
//		global.items = array_create[items_num];
//		items[0] = item_struct("diamond", spr_diamond, obj_diamond, global.diamond, spr_diamond_ui);
function item_struct(_name, _sprite, _object, _collected, _ui_sprite) {
	
	_ui_sprite??= noone
	
	var _struct = {
		name     : _name,
		sprite   : _sprite,
		object   : _object,
		collected: _collected,
		ui_sprite: _ui_sprite
	}
	
	return _struct;
}