#include "\ML_Functions\ML_Macros.h"

private ["_player", "_item", "_amount", "_assigned", "_items"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_item = [_this, 1, "", [""]] call BIS_fnc_param;
_amount = [_this, 2, 0, [0]] call BIS_fnc_param;
_assigned = (assignedItems _player);
_items = (itemsWithMagazines _player);

switch (true) do {
  case (_item in _assigned): {
    _player unlinkItem  _item;
  };
  case (_item in _items): {
    for "_i" from 1 to _amount do {
      _player removeItem _item;
    };
  };
  default {
    if (_player hasWeapon _item) then {
      _player removeWeaponGlobal _item;
    } else {
      return false
    };
  };
};

return true