private ["_number"];
_number = [_this, 0, "", [""]] call BIS_fnc_param;
_number = parseNumber(_number);
if (isNil "_number") exitWith {0};
if (typeName _number != "SCALAR") exitWith {0};
_number