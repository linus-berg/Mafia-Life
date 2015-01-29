private ["_player", "_item", "_amount"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_amount = [_this, 1, 0, [0]] call BIS_fnc_param;

if (!([_player] call ML_fnc_Client_Human)) exitWith {false};
if (_amount == 0) exitWith {false};

private["_client_coins","_current_coins"];
_client_coins = [_player, "ML_Client_Coins"] call ML_fnc_Variable_Get;

_current_coins = [_client_coins] call ML_fnc_ToInt;

_amount = _amount + _current_coins;

([_player, "ML_Client_Coins", (_amount call ML_fnc_ToAscii)] call ML_fnc_Variable_Set)
