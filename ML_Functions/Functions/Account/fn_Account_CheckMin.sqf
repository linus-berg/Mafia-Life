#define strM(x) ([x, ","] call ML_fnc_Int_ToString)

private["_amount"];
_amount = [_this, 0, 0, [0]] call BIS_fnc_param;

private["_minimum"];
_minimum = 10;
if (_amount < _minimum) exitWith {
  systemChat format[(localize "STR_ML_ERROR_DEPOSIT_MINIMUM"), strM(_minimum)];
  true
};
false