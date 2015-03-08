#include "\ML_Functions\ML_Macros.h"

return ([(configFile >> ([_this] call ML_fnc_Merchandise_GetCfg) >> _this)]
         call BIS_fnc_displayName)