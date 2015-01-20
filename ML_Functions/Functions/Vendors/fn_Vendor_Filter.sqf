#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

disableSerialization;
_ui = (uiNamespace getVariable ["ML_Vendor_Dialog", nil]);
_show_weapons =  cbChecked(_ui displayCtrl IDC_VENDOR_FILTER_WEAPONS);
_show_magazines =  cbChecked(_ui displayCtrl IDC_VENDOR_FILTER_MAGAZINES);
_show_vehicles =  cbChecked(_ui displayCtrl IDC_VENDOR_FILTER_VEHICLES);
_show_items =  cbChecked(_ui displayCtrl IDC_VENDOR_FILTER_ITEMS);

[_show_weapons, _show_magazines, _show_vehicles, _show_items] call ML_fnc_Vendor_SetupBuy;