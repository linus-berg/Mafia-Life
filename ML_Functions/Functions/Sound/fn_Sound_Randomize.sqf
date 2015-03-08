#include "\ML_Functions\ML_Macros.h"

private["_parent", "_param"];
_parent   = [_this, 0, 0, [""]] call BIS_fnc_param;
_param   = [_this, 1, 0, [""]] call BIS_fnc_param;

return (getArray(configFile >> "ML_Sound_List" >> _parent >> _param)
        call BIS_fnc_selectRandom)