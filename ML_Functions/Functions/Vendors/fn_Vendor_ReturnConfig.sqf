#include "\ML_Functions\ML_Macros.h"

private["_cfg"];
_cfg = _this;

if (!(_cfg isEqualType configFile)) exitWith {};
if !(isText(_cfg)) exitWith {};

return (missionNamespace getVariable (getText(_cfg)))