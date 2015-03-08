#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_client"];
_client = [_this, 0, objNull, [ObjNull]] call BIS_fnc_param;

return (((_client getVariable ["ML_Family", []]) select 0) 
        call ML_fnc_Family_GetInfo)