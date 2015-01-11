#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_emporium", "_index"];
_emporium = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_index = [_this, 1, 0, [0]] call BIS_fnc_param;

((ML_STOCK(_emporium)) select (parseNumber(lbData  [IDC_EMPORIUM_BUY_LIST, _index])))