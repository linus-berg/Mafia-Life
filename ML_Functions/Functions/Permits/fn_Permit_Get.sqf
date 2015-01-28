#include "\ML_Functions\ML_Macros.h"

private["_permit_id"];
_permit_id = [_this, 0, 0, [0]] call BIS_fnc_param;
if(_permit_id <= 0)exitWith{
	ML_LOG("ERROR: Permit ID is not above 0: " + Str(_permit_id));
};

((ML_Server getVariable ["ML_Permits", []]) select (_permit_id-1) select 0)