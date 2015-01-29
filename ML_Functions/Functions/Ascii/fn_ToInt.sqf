

private["_value", "_value_str", "_value_number"];
_value = [_this, 0, [], [[]]] call BIS_fnc_param;

_value_str = toString _value;
_value_number = parseNumber(_value_str);
if ( isNil "_value_number" ) exitWith {0};
if ( typeName _value_number != "SCALAR") exitWith {0};

_value_number

