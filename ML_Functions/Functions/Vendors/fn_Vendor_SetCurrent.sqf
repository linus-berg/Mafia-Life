#include "\ML_Functions\ML_Macros.h"

private["_Vendor"];
_Vendor = _this;
if (isNull _Vendor) exitWith {};
if (!(_Vendor isEqualType objNull)) exitWith {};

player setVariable ["ML_CurrentVendor", _Vendor];