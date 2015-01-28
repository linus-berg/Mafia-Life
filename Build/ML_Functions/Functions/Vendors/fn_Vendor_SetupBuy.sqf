#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_list", "_show_weapons", "_show_magazines", "_show_items", "_show_vehicles", "_index", "_add"];
_list = ML_STOCK(call ML_fnc_Vendor_GetCurrent);

_show_weapons = [_this, 0, true, [true]] call BIS_fnc_param;
_show_magazines = [_this, 1, true, [true]] call BIS_fnc_param;
_show_vehicles = [_this, 2, true, [true]] call BIS_fnc_param;
_show_items = [_this, 3, true, [true]] call BIS_fnc_param;

lbClear IDC_Vendor_BUY_LIST;

{
	if((_x select 2) == 1)then{
		switch (_x call ML_fnc_Merchandise_GetCfg) do{
			case "CfgWeapons": {
				_add = _show_weapons;
			};
			case "CfgMagazines": {
				_add = _show_magazines;
			};
			case "CfgVehicles": {
				_add = _show_vehicles;
			};
			case "ML_Item": {
				_add = _show_items;
			};
			default{
				_add = _show_items;
			};
		};
		if(_add)then{
			_index = lbAdd [IDC_Vendor_BUY_LIST, ((_x select 0) call ML_fnc_Merchandise_GetName)];
			lbSetData [IDC_Vendor_BUY_LIST, _index, Str(_forEachIndex)];
			lbSetValue [IDC_Vendor_BUY_LIST, _index, (_x select 1)];
			lbSetPicture [IDC_Vendor_BUY_LIST, _index, ((_x select 0) call ML_fnc_Merchandise_GetPicture)];
			lbSetTooltip [IDC_Vendor_BUY_LIST, _index, format["Price: %1€", (_x select 1)]];
		};
	};
}forEach _list;

if((lbSize IDC_Vendor_BUY_LIST) <= 0)then{
	lbSetCurSel [IDC_Vendor_BUY_LIST, -1];
	if((ctrlEnabled IDC_Vendor_ADD_CART))then{
		ctrlEnable [IDC_Vendor_ADD_CART, false];
	};
}else{
	if(!(ctrlEnabled IDC_Vendor_ADD_CART))then{
		ctrlEnable [IDC_Vendor_ADD_CART, true];
	};
	lbSetCurSel [IDC_Vendor_BUY_LIST, 0];
};
