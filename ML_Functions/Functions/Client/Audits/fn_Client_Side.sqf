#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if ([_player] call ML_fnc_Client_Human) exitWith {
  return ([_player] call ML_fnc_Client_SideHuman)
};

return ([_player] call ML_fnc_Client_SideAI)