#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_fID"];
_fID = [_this, 0, 0, [0]] call BIS_fnc_param;
if (_fID == 0) exitWith {
    return "No family with ID: 0"
};

return (ML_Family getVariable [str(_fID), []])