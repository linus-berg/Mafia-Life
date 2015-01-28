private["_player", "_value"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_value = [_this, 1, 0, [0]] call BIS_fnc_param;

if (not([_player] call ML_fnc_Client_Human)) exitWith {};

if (_value < 0) then {_value = 0};
_value = _value call ML_fnc_Cipher;

([_player, "ML_Client_Account", _value] call ML_fnc_Variable_Set)