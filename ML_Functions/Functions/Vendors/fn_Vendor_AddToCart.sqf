#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private[ "_index", "_item", "_permit", "_price", "_amount", "_cur_cart"];
_index = [_this, 0, 0, [0]] call BIS_fnc_param;
_info = [(call ML_fnc_Vendor_GetCurrent), 
         _index] call ML_fnc_Vendor_GetItemInfo;
_item = _info select 0;
_permit = _info select 4;
_price = [_this, 1, 0, [0]] call BIS_fnc_param;
_amount = [_this, 2, 0, [0]] call BIS_fnc_param;
_cur_cart = (count (call ML_fnc_Vendor_GetCart));

if (_item == "") exitWith {
  systemChat "No item selected!"; 
  return false
};
if (_cur_cart >= 50) exitWith {
  systemChat "Your cart is full.";
  return false
};
if (_amount <= 0) exitWith {
  systemChat "Enter a positive amount"; 
  return false
};
if ((_cur_cart+_amount) >= 50) then {
  _amount = 50-_cur_cart;
};
if (_amount > 50) then {
  systemChat "You can only purchase a maximum of 50 items at once"; 
  _amount = 50;
};

if !(_permit call ML_fnc_Client_HasPermit) exitWith {
  systemChat "You do not have the required permit."; 
  return false
};

for "_i" from 1 to _amount do {
  [_item] call ML_fnc_Vendor_SetCart;
  ML_VendorTotal = ML_VendorTotal + _price;

  _index = lbAdd [IDC_Vendor_CART_LIST, 
                  _item call ML_fnc_Merchandise_GetName];
  lbSetData [IDC_Vendor_CART_LIST, _index, _item];
  lbSetValue [IDC_Vendor_CART_LIST, _index, _price];
  lbSetPicture [IDC_Vendor_CART_LIST, _index,
                _item call ML_fnc_Merchandise_GetPicture];
  ctrlSetText [IDC_Vendor_TOTAL_COST, 
               format[(localize "STR_ML_Vendor_TOTAL"), strM(ML_VendorTotal)]];
};

return true