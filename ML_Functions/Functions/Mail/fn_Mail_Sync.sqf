#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
disableSerialization;
params[
  ['_display', displayNull, [displayNull]],
  ['_exit', 0, [0]]
];
private["_mails", "_update"];
_mails = ((netId player) call ML_fnc_Mail_GetAll);
_update = [];
{
  _curMail = (_mails select _x);
  _update pushBack [(_curMail select 0), (_curMail select 4), (_curMail select 5)];
} forEach ML_Mail_TakenItems;

//Send ML_Mail_Read and _update,
["ML_Network_Server_Data_UpdateMail", [ML_Mail_Read, _update]] call ML_fnc_Network_ClientToServer;