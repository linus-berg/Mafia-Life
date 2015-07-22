#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
disableSerialization;
params[
  ["_ctrl", controlNull, [controlNull]],
  ["_index", 0, [0]]
];
private ["_item", "_curMail", "_newItemList"];
_item = _ctrl lbData _index;
_curMail = lbValue[IDC_MAILBOX_INBOXLIST, lbCurSel IDC_MAILBOX_INBOXLIST];
if ((ML_Mail_Current select 6) == "Y") exitWith {
  /* If C.O.D and not paid simply do not take any item */
};
if (_item == "COINS") exitWith {
  [player, (_ctrl lbValue _index)] call ML_fnc_Client_SetCoins;
  systemChat format["You recieved %1 coins.", (_ctrl lbValue _index)];
  _ctrl lbDelete _index;
  ML_Mail_Current set [5, 0];
  (lbCurSel IDC_MAILBOX_INBOXLIST) call ML_fnc_Mail_UpdateCurrent;
  if (!((lbCurSel IDC_MAILBOX_INBOXLIST) in ML_Mail_TakenItems)) then {
    ML_Mail_TakenItems pushBack (lbCurSel IDC_MAILBOX_INBOXLIST);
  };
};
if (!(player canAdd _item)) exitWith {
  systemChat "Not enough space";
};
if (!((lbCurSel IDC_MAILBOX_INBOXLIST) in ML_Mail_TakenItems)) then {
  ML_Mail_TakenItems pushBack (lbCurSel IDC_MAILBOX_INBOXLIST);
};
_newItemList = (ML_Mail_Current select 4);
if ((_ctrl lbData 0) == "COINS") then {
  _newItemList deleteAt (_index-1);
} else {
  _newItemList deleteAt _index;
};
ML_Mail_Current set [4, _newItemList];
(lbCurSel IDC_MAILBOX_INBOXLIST) call ML_fnc_Mail_UpdateCurrent;
player addItem _item;
_ctrl lbDelete _index;
return true