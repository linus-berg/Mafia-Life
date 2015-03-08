#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
return (([_player] call ML_fnc_Client_Side) == resistance)