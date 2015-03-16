#include "\ML_Functions\ML_Macros.h"

private ["_player", "_client_coins_name"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_client_coins_name  = "ML_Client_Coins";

if !([_player] call ML_fnc_Client_Human) exitWith {
  return 0
};

private["_Result"];
_Result = 0;

_Result = [_player, _client_coins_name] call ML_fnc_Variable_Get;

_Result = [_Result] call ML_fnc_ToInt;

return _Result