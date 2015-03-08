#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
private["_player", "_target"];

_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_target = [_this, 1, objNull, [objNull]] call BIS_fnc_param;

if (!([_player] call ML_fnc_Client_Human)) exitWith {false};
if (_player != player) exitWith {false};

if (!(createDialog "ML_Interaction_dialog")) exitWith {SystemChat "Dialog Error, Please report this on the bug tracker and provide your .RPT file."; ML_LOG("ERROR: Dialog Error");};

switch (side player) do {
  case west: {
    buttonSetAction [IDC_INTERACTION_ACTION_ARREST, format["[%1, %2] call ML_fnc_Account_Deposit; closedialog 0;", _player, _target] ];
    buttonSetAction [IDC_INTERACTION_ACTION_DETAIN, format["[%1, %2] call ML_fnc_Account_Withdraw; closedialog 0;", _player, _target] ];
    buttonSetAction [IDC_INTERACTION_ACTION_TICKET, format["[%1, ([ctrlText %2] call ML_fnc_String_ToInt)] call ML_fnc_Account_Withdraw; closedialog 0;", _player, IDC_INTERACTION_ACTION_TICKETAMOUNT] ];
    buttonSetAction [IDC_INTERACTION_ACTION_INSPECT, format["[%1, %2] call ML_fnc_Account_Withdraw; closedialog 0;", _player, _target] ];
  };
  case east: { 
  };
  case civilian: {
    ctrlSetText [IDC_INTERACTION_ACTION_ARREST, "Steal"]; //Arrest -> Steal
    if(([player, "sc_rope"] call ML_fnc_Invenotry_HasItem))then{
      ctrlSetText [IDC_INTERACTION_ACTION_DETAIN, "Constrain"]; //Detain -> Tie-Up (Requires Rope (Scorch inventory items))
    }else{
      ctrlShow[IDC_INTERACTION_ACTION_DETAIN, false];
    };
    ctrlSetText [IDC_INTERACTION_ACTION_TICKET, "Kneecap"]; //Ticket -> Kneecap
    
    ctrlShow[IDC_INTERACTION_ACTION_TICKETAMOUNT, false];
    ctrlShow[IDC_INTERACTION_ACTIONS_REASON, false];
    
    buttonSetAction [IDC_INTERACTION_ACTION_ARREST, format["[%1, %2] call ML_fnc_Client_Steal; closedialog 0;", _player, _target] ];
    buttonSetAction [IDC_INTERACTION_ACTION_DETAIN, format["[%1, %2] call ML_fnc_Account_Withdraw; closedialog 0;", _player, _target] ];
    buttonSetAction [IDC_INTERACTION_ACTION_TICKET, format["%1 call ML_fnc_Client_Kneecap; closedialog 0;", _target] ];
    buttonSetAction [IDC_INTERACTION_ACTION_INSPECT, format["[%1, %2] call ML_fnc_Account_Withdraw; closedialog 0;", _player, _target] ];
  };
};
