#include "\ML_Functions\ML_Macros.h"

private["_player", "_target"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if !( [_player] call ML_fnc_Client_Human ) exitWith {
  return false
};

if !( [_target] call ML_fnc_Client_Human ) exitWith {
  return false
};

[_player, _target] call ML_fnc_Interaction_ClientMenu;
return true