/*

Sides:
  Civilian: 1
  Blufor: 2
  Insurgents: 3
  AI: 0

*/

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if ([_player] call ML_fnc_Client_Human) exitWith {
  Switch ([_player] call ML_fnc_Client_SideHuman) do {
    Case civilian: {
      1
    };
    Case west: {
      2
    };
    Case east: {
      3
    };
  };
  
};

0