#include "\ML_Core\UI\GUI.h"
private["_Vendor", "_VendorDialog"];

_VendorDialog = findDisplay IDD_Vendor;
if (isNull _VendorDialog) exitWith {objNull};

_Vendor = player getVariable "ML_CurrentVendor";
if (isNull _Vendor) exitWith {objNull};

_Vendor