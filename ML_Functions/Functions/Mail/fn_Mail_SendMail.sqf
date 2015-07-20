#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
ctrlShow [2001, false];
ctrlEnable [2001, false];
ctrlShow [2000, true];
ctrlEnable [2000, true];
ctrlSetText [
  IDC_MAILBOX_ICOINSTXT,
  format ["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]
];
ctrlSetText [
  IDC_MAILBOX_POSTAGE,
 "Postage: 30€"
];
buttonSetAction [
  IDC_MAILBOX_SEND, 
  format["[ctrlText %1, ctrlText %2, ctrlText %3, ([ctrlText %4] call ML_fnc_String_ToInt)] call ML_fnc_Mail_Send;", 
  IDC_MAILBOX_UID, IDC_MAILBOX_SUBJECT, IDC_MAILBOX_CONTENT, IDC_MAILBOX_COINS]
];
call ML_fnc_Mail_LoadItems;