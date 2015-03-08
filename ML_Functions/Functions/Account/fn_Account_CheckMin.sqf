#include "\ML_Functions\ML_Macros.h"

private["_amount"];
_amount = [_this, 0, 0, [0]] call BIS_fnc_param;

private["_minimum"];
_minimum = 10;
if ( _amount < _minimum ) exitWith {
  systemChat format[(localize "STR_ML_ERROR_DEPOSIT_MINIMUM"), strM(_minimum)];
  return true
};
return false