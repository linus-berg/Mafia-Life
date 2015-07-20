#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
params[
  ["_index", 0, [0]]
];
private["_mails"];
_mails = ((netId player) call ML_fnc_Mail_GetAll);
_mails set [_index, ML_Mail_Current];
(player setVariable ["ML_Client_Mail", _mails, true]);
return true