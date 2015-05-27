#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_Vendor", "_Vendor_list"];
_Vendor = _this;
_Vendor_list = ML_STOCK(_Vendor);

if !(str(side player) in 
    ([(ML_SIDE(_Vendor)), ","] call BIS_fnc_splitString)) exitWith {
  systemChat "This Vendor is not for your current side"; 
  return false
};
if !(createDialog "Vendor_dialog") exitWith {
  ML_LOG("Dialogue error"); 
  systemChat "Dialogue did not open. Please report this on our bug tracker"; 
  return false
};

playSound [(["Vendor", "Greetings"] call ML_fnc_Sound_Randomize), true];

ML_VendorCart = [];
ML_VendorTotal = 0;
_Vendor call ML_fnc_Vendor_SetCurrent;

[true, true, true, true] call ML_fnc_Vendor_SetupBuy;

_Vendor_list call ML_fnc_Vendor_SetupSell;

ctrlSetText [IDC_Vendor_COINS_TEXT, 
             format ["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]];
ctrlSetText [IDC_Vendor_TOTAL_COST, 
             format[(localize "STR_ML_Vendor_TOTAL"), strM(ML_VendorTotal)]];

buttonSetAction [IDC_Vendor_ADD_CART, 
                 format["[(lbCurSel %1), lbValue [%1, lbCurSel %1],
                         ([ctrlText %2] call ML_fnc_String_ToInt)] 
                         call ML_fnc_Vendor_AddToCart;", IDC_Vendor_BUY_LIST,
                        IDC_Vendor_CART_AMOUNT]];
                        
buttonSetAction [IDC_Vendor_BUY_ACTION, 
                 format["%1 call ML_fnc_Vendor_Purchase;", _Vendor]];

buttonSetAction [IDC_Vendor_CART_REMOVE, 
                 format["[lbCurSel %1, lbValue [%1, lbCurSel %1]] 
                         call ML_fnc_Vendor_Remove;", IDC_Vendor_CART_LIST]];

buttonSetAction [IDC_Vendor_SELL_ACTION, 
                 format["[lbCurSel %1, lbValue [%1, lbCurSel %1],
                         lbData [%1, lbCurSel %1]] call ML_fnc_Vendor_Sell;",
                        IDC_Vendor_SELL_LIST]];

return true