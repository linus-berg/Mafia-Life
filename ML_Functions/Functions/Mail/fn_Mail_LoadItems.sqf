#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_config"];
_config = [];

if (primaryWeapon player != "") then {
  _config pushBack (primaryWeapon player);
};
if (secondaryWeapon player != "") then {
  _config pushBack (secondaryWeapon player);
};
if (handgunWeapon player != "") then {
  _config pushBack (handgunWeapon player);
};
_config append primaryWeaponItems player;
_config append itemsWithMagazines player; 
_config append assignedItems player;

lbClear IDC_MAILBOX_ITEMLIST;
{
  if (_x != "") then {
    _index = lbAdd [IDC_MAILBOX_ITEMLIST, _x call ML_fnc_Merchandise_GetName];
    lbSetData [IDC_MAILBOX_ITEMLIST, _index, _x];
    lbSetPicture [IDC_MAILBOX_ITEMLIST, _index, _x call ML_fnc_Merchandise_GetPicture];
    lbSetTooltip [IDC_MAILBOX_ITEMLIST, _index, "Double click to send item."];
  }
} forEach _config;