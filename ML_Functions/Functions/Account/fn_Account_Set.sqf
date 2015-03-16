#include "\ML_Functions\ML_Macros.h"

private["_player", "_value"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_value = [_this, 1, 0, [0]] call BIS_fnc_param;

if !([_player] call ML_fnc_Client_Human) exitWith {};

if (_value < 0) then {
  _value = 0;
};

_value = _value call ML_fnc_ToAscii;

return ([_player, "ML_Client_Account", _value] call ML_fnc_Variable_Set)