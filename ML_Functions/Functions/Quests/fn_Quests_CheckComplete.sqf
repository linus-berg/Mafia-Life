#include "\ML_Functions\ML_Macros.h"

private ["_req", "_caller", "_complete", "_config"];

_req = [_this, 0, 0, [[]]] call BIS_fnc_param;
_caller = [_this, 1, 0, [ObjNull]] call BIS_fnc_param;
_complete = true;
_config = [];
_config = _config + primaryWeaponItems _caller;
_config = _config + (itemsWithMagazines _caller);

{
  if (([_config, (_x select 0)] call ML_fnc_Array_ElementCount) <
      (_x select 1)) exitWith {
    _complete = false;
  };
  if (_forEachIndex+1 == count _req && _complete) then { /* If last item in array and no errors found, delete items. */
    {
      [_caller, (_x select 0), (_x select 1)] call ML_fnc_Inventory_RemoveItem;
    } forEach _req;
  };
} forEach _req;

return _complete