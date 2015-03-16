/*

Sides:
  Civilian: 1
  Blufor: 2
  Insurgents: 3
  AI: 0

*/
#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if ([_player] call ML_fnc_Client_Human) exitWith {
  Switch ([_player] call ML_fnc_Client_SideHuman) do {
    Case civilian: {
      return "CIV"
    };
    Case west: {
      return "WEST"
    };
    Case east: {
      return "INS"
    };
  };
};

return "AI"