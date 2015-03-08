#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_Vendor", "_index"];
_Vendor = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_index = [_this, 1, 0, [0]] call BIS_fnc_param;

return ((ML_STOCK(_Vendor)) select (parseNumber(lbData  [IDC_Vendor_BUY_LIST,
                                                         _index])))