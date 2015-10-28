#include "\ML_Functions\ML_Macros.h"

private["_value", "_value_str", "_value_number"];
_value = [_this, 0, [], [[]]] call BIS_fnc_param;

_value_str = toString _value;
_value_number = parseNumber(_value_str);

if (isNil "_value_number") exitWith {
  return 0
};

if (!(_value_number isEqualType 0)) exitWith {
  return 0
};

return _value_number

