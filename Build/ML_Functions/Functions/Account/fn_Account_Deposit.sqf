private["_player", "_target", "_amount"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_amount  = [_this, 2, 0, [0]] call BIS_fnc_param;

if (not([_player] call ML_fnc_Client_Human)) exitWith {};
if (not([_target] call ML_fnc_Client_Human)) exitWith {};

if (_player != player) exitWith {};

if (_amount <= 0) exitWith {};

if ([_amount] call ML_fnc_Account_CheckMin) exitWith {};
	
if (_player == _target) exitWith {
	(_this call ML_fnc_Account_DepositSelf)
};

(_this call ML_fnc_Account_DepositOther)	