#include "\ML_Functions\ML_Macros.h"

private["_cfg"];
_cfg = _this;

if ( typeName _cfg != "CONFIG" ) exitWith {};
if !( isText(_cfg) ) exitWith {};

return (missionNamespace getVariable (getText(_cfg)))