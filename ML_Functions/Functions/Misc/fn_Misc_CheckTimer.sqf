private["_last"];
_last = (_this select 0) getVariable[(_this select 1), 0];
if((diag_tickTime - _last) < (_this select 2))exitWith{false};
true