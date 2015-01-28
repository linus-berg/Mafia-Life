#include "\ML_Functions\ML_Macros.h"

private["_player", "_variable_name", "_variable_value"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_variable_name = [_this, 1, "", [""]] call BIS_fnc_param;
_variable_value = [_this, 2, [], [[]]] call BIS_fnc_param;

([_player, _variable_name, _variable_value] call CBA_fnc_setVarNet)