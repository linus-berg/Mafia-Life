#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_Vendor_list", "_config"];
_Vendor_list = _this;
_config = [];

if(primaryWeapon player != "") then {_config pushBack (primaryWeapon player);};
if(secondaryWeapon player != "") then {_config pushBack (secondaryWeapon player);};
if(handgunWeapon player != "") then {_config pushBack (handgunWeapon player);};
_config = _config + primaryWeaponItems player;
_config = _config + (itemsWithMagazines player) + (assignedItems player);

lbClear IDC_Vendor_SELL_LIST;
{
  if((_x select 3) == 1)then{
    if((_x select 0) in _config)then{
      for "_i" from 1 to ([_config, (_x select 0)] call ML_fnc_Array_ElementCount) do {
        _index = lbAdd [IDC_Vendor_SELL_LIST, ((_x select 0) call ML_fnc_Merchandise_GetName)];
        lbSetData [IDC_Vendor_SELL_LIST, _index, (_x select 0)];
        lbSetValue [IDC_Vendor_SELL_LIST, _index, ((_x select 1)/2)*1.25];
        lbSetPicture [IDC_Vendor_SELL_LIST, _index, ((_x select 0) call ML_fnc_Merchandise_GetPicture)];
        lbSetTooltip [IDC_Vendor_SELL_LIST, _index, format["Sell Price: %1€", ((_x select 1)/2)*1.25]];
      };
    };
  };
}count _Vendor_list;

true