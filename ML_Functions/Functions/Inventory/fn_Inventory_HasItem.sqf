private ["_player", "_item", "_items", "_return"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_item = [_this, 1, "", ["", []]] call BIS_fnc_param;
_items = (assignedItems _player) + (itemsWithMagazines _player);
_return = false;

if ((typeName _item) == "ARRAY") then {	
	{
		if((_x in _items))exitWith{_return = true;};
	}count _item;
}else{
	_return = (_item in _items);
};
_return