#include "\ML_Functions\ML_Macros.h"
private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if !( [_player] call ML_fnc_Client_Human ) exitWith {
  return 0
};

private ["_value"];
_value = [_player, "ML_Client_Account"] call ML_fnc_Variable_Get;
_value = ([_value] call ML_fnc_ToInt);

return _value