#include "\ML_Functions\ML_Macros.h"

private["_player", "_permit_id", "_permits"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_permit_id = [_this, 1, 0, [0]] call BIS_fnc_param;

if !([_player] call ML_fnc_Client_Human) exitWith {
  return 0
};

_permits = (_player getVariable ["ML_Client_Permits", []]);
_permits pushBack _permit_id;
_player setVariable ["ML_Client_Permits", _permits, true];

return _permit_id