#include "\ML_Functions\ML_Macros.h"

private ["_number"];
_number = [_this, 0, "", [""]] call BIS_fnc_param;
_number = parseNumber(_number);
if ( isNil "_number" ) exitWith {
  return 0
};
if ( typeName _number != "SCALAR" ) exitWith {
  return 0
};
return _number