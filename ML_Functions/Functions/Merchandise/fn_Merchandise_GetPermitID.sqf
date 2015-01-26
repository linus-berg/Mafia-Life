#include "\ML_Functions\ML_Macros.h"

private["_index", "_Vendor"];
_index = [_this, 0, 0, [0]] call BIS_fnc_param;
_Vendor = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;

(((ML_STOCK(_Vendor)) select _index) select 4)
