private["_player", "_variable_name"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_variable_name = [_this, 1, "", [""]] call BIS_fnc_param;

private["_variable_value"];
_variable_value = _player getVariable _variable_name;
_variable_value = if (isNil "_variable_value") then { [] } else { _variable_value };
_variable_value = if (typeName _variable_value != "ARRAY") then { [] } else {_variable_value };
_variable_value