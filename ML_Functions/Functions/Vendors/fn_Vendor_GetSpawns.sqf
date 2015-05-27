#include "\ML_Functions\ML_Macros.h"

private ["_npc", "_box", "_spawn"];
_npc = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;

_box = (_this getVariable ["ML_Vendor_Box", false]);
_spawn = (_this getVariable ["ML_Vendor_Vehicle", false]);

if (typeName _box == typeName false) then {
  _box = objNull;
} else {
  _box = objectFromNetId _box;
};

if (typeName _spawn == typeName false) then {
  _spawn = objNull;
} else {
  _spawn = objectFromNetId _spawn;
};

return ([_box, _spawn])