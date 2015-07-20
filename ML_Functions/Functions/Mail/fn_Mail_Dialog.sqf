#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

if !(createDialog "ML_Mail_Dialog") exitWith {
  ML_LOG("Dialogue error"); 
  systemChat "Dialogue did not open. Please report this on our bug tracker"; 
  return false
};
ML_Mail_ItemsToSend = [];
ML_Mail_Read = [];
ML_Mail_TakenItems = [];

call ML_fnc_Mail_Inbox;
//call ML_fnc_Mail_SendMail;
buttonSetAction [IDC_MAILBOX_SENDMAIL, "call ML_fnc_Mail_SendMail; diag_log 'Called SendMail';"];
buttonSetAction [IDC_MAILBOX_INBOXTAB, "call ML_fnc_Mail_Inbox; diag_log 'Called Inbox';"];
