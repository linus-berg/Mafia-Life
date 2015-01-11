#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_index", "_info", "_price", "_permit"];
_index = [_this, 1, 0, [0]] call BIS_fnc_param;
_info = [(call ML_fnc_Emporium_GetCurrent), _index] call ML_fnc_Emporium_GetItemInfo;
_class = _info select 0;
_permit = _info select 4;
_price = lbValue [IDC_EMPORIUM_BUY_LIST, _index];
if(!(_permit <= 0))then{
	_permit = (_permit call ML_fnc_Permit_Get);
};


lbClear IDC_EMPORIUM_INFO_LIST;
lbAdd [IDC_EMPORIUM_INFO_LIST, (_class call ML_fnc_Merchandise_GetName)];
lbAdd [IDC_EMPORIUM_INFO_LIST, format["Price: %1€", _price]];
if((typeName _permit) == "STRING")then{ //Fix this
	lbAdd [IDC_EMPORIUM_INFO_LIST, format["Permit: %1", _permit]];
};
ctrlSetText [IDC_EMPORIUM_INFO_IMAGE, (_class call ML_fnc_Merchandise_GetPicture)];

true