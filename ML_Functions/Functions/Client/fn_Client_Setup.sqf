#include "\ML_Functions\ML_Macros.h"

while {true} do {
  private["_complete"];
  _complete = ([player] call ML_fnc_Client_Human) || isServer;
  if (_complete) exitWith {};
};

private["_player"];
_player = player;

isCop = [_player] call ML_fnc_Client_SidePolice;
isCiv = [_player] call ML_fnc_Client_SideCiv;
isIns = [_player] call ML_fnc_Client_SideIns;

_player setVariable ["ML_Role", _player, true];
_player setVariable ["ML_RoleString", Str(_player), true];
_player setVariable ["ML_RoleNumber", [Str _player, 4] call BIS_fnc_trimString,
                     true];
                     
Paycheck = 500;

ML_Items_Lethal = ["ML_Tyreiron"];
_player setVariable ["ML_Vendor_Cart", [], true];
_player setVariable ["ML_Vendor_CartTotal", 0, true];

_player addEventHandler ["AnimChanged", "([_this, false] call ML_fnc_Animation_Handle)"];
_player addEventHandler ["AnimDone", "([_this, true] call ML_fnc_Animation_Handle)"];