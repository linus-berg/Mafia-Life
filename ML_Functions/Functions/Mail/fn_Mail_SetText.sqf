#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
disableSerialization;
private ["_ctrl", "_txt"];
params[
  ["_mail", [], [[]]]
];
_ctrl = (uiNamespace getVariable ["ML_Mail_Dialog", nil]) displayCtrl IDC_MAILBOX_MAILCONTENT;
ctrlSetText [IDC_MAILBOX_MAILSUBJECT, format ["Subject: %1", _mail select 2]];
ctrlSetText [IDC_MAILBOX_FROM, format ["From: %1", _mail select 1]];
_ctrl ctrlSetStructuredText parseText (_mail select 3);
[_ctrl] call BIS_fnc_ctrlTextHeight;

return true