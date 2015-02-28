#define strM(x) ([x, ","] call ML_fnc_Int_ToString)

private["_player", "_amount"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_amount = [_this, 1, 0, [0]] call BIS_fnc_param;

if (!([_player] call ML_fnc_Client_Human)) exitWith {};
if (_player != player) exitWith {};
if (_amount <= 0) exitWith {};
if ([_amount] call ML_fnc_Account_CheckMin) exitWith {};

private["_bank_amount"];
_bank_amount = [_player] call ML_fnc_Account_Get;

if (_amount > _bank_amount) exitWith {
    systemChat format["You do not have enough money on your bank account to withdraw $%1", strM(_amount)];
};

[_player, -(_amount)] call ML_fnc_Account_Transact;
coins = coins + _amount;
[_player, (_amount)] call ML_fnc_Client_SetCoins;
systemChat format["You have withdrawn $%1 from your bank account", strM(_amount)];