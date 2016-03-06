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

_target setPosATL (getPosATL ML_Prison);

[_target, "ML_Arrest_Timer", diag_tickTime] call CBA_fnc_setVarNet;

return true