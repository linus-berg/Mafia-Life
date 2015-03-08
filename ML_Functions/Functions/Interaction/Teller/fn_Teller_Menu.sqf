#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

_this spawn {
  private["_player"];
  
  _player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
  
  if (!([_player] call ML_fnc_Client_Human)) exitWith {};
  if (_player != player) exitWith {};

  if (!(createDialog "Account")) exitWith {hint "Dialog Error!";};

  private["_my_index"];

  _my_index = [IDC_ACCOUNT_PLAYERS] call ML_fnc_GUI_ClientListComplete;

  if (_my_index >= 0) then {
    lbSetCurSel [IDC_ACCOUNT_PLAYERS, _my_index];
  };
  
  buttonSetAction [
    IDC_ACCOUNT_DEPOSIT, 
    format["[%1, (missionNamespace getVariable(lbData [%2, lbCurSel %2])),
            [ctrlText %3] call ML_fnc_String_ToInt]
            call ML_fnc_Account_Deposit;
            closedialog 0;", 
           _player, IDC_ACCOUNT_PLAYERS, IDC_ACCOUNT_AMOUNT]];
  buttonSetAction [
    IDC_ACCOUNT_WITHDRAW, 
    format["[%1, ([ctrlText %2] call ML_fnc_String_ToInt)] 
            call ML_fnc_Account_Withdraw; 
            closedialog 0;", 
           _player, IDC_ACCOUNT_AMOUNT]];

  while {ctrlVisible IDC_ACCOUNT_DEPOSIT} do {
    private["_money", "_bank"];
    _money = [_player] call ML_fnc_Client_GetCoins;
    _bank = [_player] call ML_fnc_Account_Get;
    CtrlSetText [IDC_ACCOUNT_INVENTORY, format ["%1€", strM(_money)]];
    CtrlSetText [IDC_ACCOUNT_COINS, format ["%1€", strM(_bank)]];
    private["_amount"];
    _amount = [ctrlText 2] call ML_fnc_String_ToInt;
    if (_amount < 0) then {_amount = 0};
    sleep 0.3;
  };
};