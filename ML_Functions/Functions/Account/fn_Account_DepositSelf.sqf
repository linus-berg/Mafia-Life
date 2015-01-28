#define strM(x) ([x, ","] call ML_fnc_Int_ToString)
#define strN(x) ([x, ""] call ML_fnc_Int_ToString)

private["_player", "_target", "_amount"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_amount  = [_this, 2, 0, [0]] call BIS_fnc_param;

if (not([_player] call ML_fnc_Client_Human)) exitWith {};
if (not([_target] call ML_fnc_Client_Human)) exitWith {};
if (_player != player) exitWith {};
if (_amount <= 0) exitWith {};

if ([_amount] call ML_fnc_Account_CheckMin) exitWith {};

private["_money"];
_money = [_player] call ML_fnc_Client_GetCoins;

if (_money < _amount) exitWith {
	systemChat format[(localize "STR_ML_ERROR_DEPOSIT_ENOUGH"), strM(_amount)];
};

systemChat format[(localize "STR_ML_ACCOUNT_DEPOSITED"), strM(_amount)];
[_player, _amount] call ML_fnc_Account_Transact;
[_player, -(_amount)] call ML_fnc_Client_SetCoins;