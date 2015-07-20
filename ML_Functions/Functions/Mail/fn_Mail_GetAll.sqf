#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
params[
  ["_netId", "", [""]]
];
return (objectFromNetId(_netId) getVariable ["ML_Client_Mail", []])
