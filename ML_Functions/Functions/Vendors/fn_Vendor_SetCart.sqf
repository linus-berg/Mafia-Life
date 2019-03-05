#include "\ML_Functions\ML_Macros.h"

private["_player", "_current_cart"];
_player = player;
_current_cart = [_player, "ML_Vendor_Cart"] call ML_fnc_Variable_Get;
params[
  ["_item", ""],
  ["_index", -1]
];

if (_index < 0) then {
  _current_cart pushBack _item;
} else {
  _current_cart deleteAt _index;
};
_player setVariable ["ML_Vendor_Cart", _current_cart, true];

return true