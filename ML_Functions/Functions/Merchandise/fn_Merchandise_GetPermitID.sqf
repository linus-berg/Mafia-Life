#include "\ML_Functions\ML_Macros.h"

private["_index", "_emporium"];
_index = [_this, 0, 0, [0]] call BIS_fnc_param;
_emporium = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
diag_log _index;
diag_log ML_STOCK(_emporium);
(((ML_STOCK(_emporium)) select _index) select 4)
