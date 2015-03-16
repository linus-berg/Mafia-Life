#include "\ML_Functions\ML_Macros.h"

private["_player", "_target"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if !([_player] call ML_fnc_Client_Human) exitWith {
  return false
};
if !([_target] call ML_fnc_Client_Human) exitWith {
  return false
};

if !(player call ML_fnc_Client_IsArmed) exitWith {
  return false
};

if !(_target call ML_fnc_Client_IsDefenceless) exitWith {
  systemChat format["%1 is not defenceless.", name _target];
  return false
};

if !([_target, "ML_LastStolen", 1200] call ML_fnc_Misc_CheckTimer) exitWith {
  systemChat format["%1 was recently stolen from.", name _target]; 
  return false
};

private["_stolen"];
_stolen = (floor (random ([_target] call ML_fnc_Client_GetCoins)));
[_target, -(_stolen)] call ML_fnc_Client_SetCoins;
[player, _stolen] call ML_fnc_Client_SetCoins;

[_target, "ML_LastStolen", diag_tickTime] call CBA_fnc_setVarNet;

return true