private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _player) exitWith {false};
true