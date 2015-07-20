#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
params[
  ["_ctrl", controlNull, [controlNull]],
  ["_mindex", 0, [0]]
];
private["_mails", "_index"];
_mails = ((netId player) call ML_fnc_Mail_GetAll);
ML_Mail_Current = (_mails select _mindex);
if ((ML_Mail_Current select 8) != "Y") then {
  ML_Mail_Read pushBack (ML_Mail_Current select 0);
  ML_Mail_Current set [8, "Y"];
  lbSetPicture [IDC_MAILBOX_INBOXLIST, _mindex, "\ML_Images\GUI\True.paa"];
  _mindex call ML_fnc_Mail_UpdateCurrent;
};
[ML_Mail_Current] call ML_fnc_Mail_SetText;
lbClear IDC_MAILBOX_MAILITEMS;
if ((ML_Mail_Current select 6) == "Y") then {
 /* C.O.D, you will need to pay before taking items */
} else {
  if ((ML_Mail_Current select 5) > 0) then {
    _index = lbAdd [IDC_MAILBOX_MAILITEMS, format["Coins (%1)", (ML_Mail_Current select 5)]];
    lbSetData [IDC_MAILBOX_MAILITEMS, _index, "COINS"];
    lbSetValue [IDC_MAILBOX_MAILITEMS, _index, (ML_Mail_Current select 5)];
    lbSetPicture [IDC_MAILBOX_MAILITEMS, _index, "\ML_Images\Icons\Inv_Coins_ca.paa"];
    lbSetTooltip [IDC_MAILBOX_MAILITEMS, _index, "Double click to take coins."];
  };
};
{
  if (_x != "") then {
    _index = lbAdd [IDC_MAILBOX_MAILITEMS, _x call ML_fnc_Merchandise_GetName];
    lbSetData [IDC_MAILBOX_MAILITEMS, _index, _x];
    lbSetPicture [IDC_MAILBOX_MAILITEMS, _index, _x call ML_fnc_Merchandise_GetPicture];
    lbSetTooltip [IDC_MAILBOX_MAILITEMS, _index, "Double click to take item."];
  }
} forEach (ML_Mail_Current select 4);