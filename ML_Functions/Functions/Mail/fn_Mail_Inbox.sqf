#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
ctrlShow [2000, false];
ctrlEnable [2000, false];
ctrlShow [2001, true];
ctrlEnable [2001, true];
private ["_mail", "_index", "_image"];
_mail = player getVariable ["ML_Client_Mail", []];
ML_Mail_Current = [];
lbClear IDC_MAILBOX_INBOXLIST;
/*if ((count _mail) == 0) then {
  ctrlShow [IDC_MAILBOX_MAILITEMS, false];
  ctrlEnable [IDC_MAILBOX_MAILITEMS, false];
  ctrlShow [IDC_MAILBOX_BACKGROUND, false];
  ctrlEnable [IDC_MAILBOX_BACKGROUND, false];
  ctrlShow [IDC_MAILBOX_MAILCONTENT, false];
  ctrlEnable [IDC_MAILBOX_MAILCONTENT, false];
  ctrlShow [IDC_MAILBOX_MAILSUBJECT, false];
  ctrlEnable [IDC_MAILBOX_MAILSUBJECT, false];
  ctrlShow [IDC_MAILBOX_REPLY, false];
  ctrlEnable [IDC_MAILBOX_REPLY, false];
  ctrlShow [IDC_MAILBOX_FROM, false];
  ctrlEnable [IDC_MAILBOX_FROM, false];
};*/
{
  _index = lbAdd [IDC_MAILBOX_INBOXLIST, (_x select 2)];
  lbSetData [IDC_MAILBOX_INBOXLIST, _index, (_x select 1)];
  lbSetValue [IDC_MAILBOX_INBOXLIST, _index, (_x select 0)];
  lbSetTooltip [IDC_MAILBOX_INBOXLIST, _index, format["Sent: %1", (_x select 7)]];
  if ((_x select 8) == "Y") then {
    _image = "\ML_Images\GUI\True.paa";
  } else {
    _image = "\ML_Images\GUI\False.paa";
  };
  lbSetPicture [IDC_MAILBOX_INBOXLIST, _index, _image];
} forEach _mail;
lbSetCurSel [IDC_MAILBOX_INBOXLIST, 0];