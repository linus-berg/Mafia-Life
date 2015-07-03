#include "\ML_Functions\ML_Macros.h"

private["_car", "_player", "_ppos", "_cpos", "_selection", "_xaxis", "_yaxis",
        "_vDir", "_x", "_y", "_damage"];
_car = (nearestObjects [(getPosATL player), ["LandVehicle"], 10]);
if ((count _car) == 0) exitWith {
  systemChat "No car nearby.";
  false
};

_car = _car select 0;
_ppos = getPosATL player;
_cpos = getPosATL _car;
_selection = "";

if (!alive(_car)) exitWith {
  systemChat "Vehicle is destroyed.";
};

if (player in (crew _car)) exitWith {
  systemChat "You can not be inside the vehicle";
};

_x = (_ppos select 0) - (_cpos select 0);
_y = (_ppos select 1) - (_cpos select 1);

_vDir = (getDir _car);
_xAxis = (cos _vDir)*_x - (sin _vDir)*_y;
_yAxis = (sin _vDir)*_x + (cos _vDir)*_y;

if ((_xaxis * _yaxis) > 0) then {
  if (_xaxis < 0 && _yaxis < 0) then {
    /* Back left wheel - Third quadrant */
    _selection = "HitLF2Wheel";
  } else {
    /* Front right wheel - First quadrant */
    _selection = "HitRFWheel";
  };
} else {
  if (_xaxis < 0 && _yaxis > 0) then {
    /* Front left wheel - Second quadrant */
    _selection = "HitLFWheel";
  } else {
    /* Back right wheel - Fourth quadrant */
    _selection = "HitRF2Wheel";
  };
};

if ([player, ["ML_Item_Wheel"]] call ML_fnc_Inventory_HasItem) then {
  _damage = (_car getHitPointDamage _selection);
  if (_damage >= 1) then {
    closeDialog 0;
    _car setHitPointDamage [_selection, 0];
    [player, "ML_Item_Wheel", 1] spawn ML_fnc_Inventory_RemoveItem;
    player playMoveNow "Acts_carFixingWheel";
  };
} else {
  systemChat "You do not have a wheel";
};
