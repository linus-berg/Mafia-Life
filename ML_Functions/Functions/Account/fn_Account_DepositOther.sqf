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


private["_player_variable", "_player_variable_name", "_bank_amount"];
private["_total_due"];  
_total_due = _amount;
_bank_amount = [_player] call ML_fnc_Account_Get;

if (_bank_amount < _total_due) exitWith {
  //player groupChat format["You do not have enough money in your account to send $%1, with tax fee $%2", strM(_amount), strM(_tax_fee)];
};

[_player, -(_total_due)] call ML_fnc_Account_Transact;
//[_tax_fee] call shop_update_taxes;

//player groupChat format["You have sent $%1 to %2-%3, your tax fee was $%4", strM(_amount), _target, (name _target), strM(_tax_fee)];
//format['[%1, %2, %3] call interact_deposit_receive;', _target, _player, strN(_amount)] call broadcast;