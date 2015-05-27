#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_Vendor", "_VendorDialog"];

_VendorDialog = findDisplay IDD_Vendor;
if (isNull _VendorDialog) exitWith {
  return objNull
};

_Vendor = player getVariable "ML_CurrentVendor";
if (isNull _Vendor) exitWith {
  return objNull
};

return _Vendor