private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

(([_player] call ML_fnc_Client_Side) == civilian)