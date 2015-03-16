#include "\ML_Functions\ML_Macros.h"

private["_array", "_item"];

_array = [_this, 0, [], [[]]] call BIS_fnc_param;
_item = [_this, 1, "", ["", [], objNull, 0]] call BIS_fnc_param;

return ({ _x == _item } count _array)
