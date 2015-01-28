

private["_value", "_value_str", "_value_number"];
_value = [_this, 0, [], [[]]] call BIS_fnc_param;

_value_str = toString _value;
_value_number = parseNumber(_value_str);
if ( isNil "_value_number" ) exitWith { /* player groupChat format["ERROR: ML_fnc_Decipher_number: %1 is not a number", _value_str];*/ 0};
if ( typeName _value_number != "SCALAR") exitWith { /* player groupChat format["ERROR: ML_fnc_Decipher_number: %1 not parsable as SCALAR", _value_str];*/ 0};

_value_number

