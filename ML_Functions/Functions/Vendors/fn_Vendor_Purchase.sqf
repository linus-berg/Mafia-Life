#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_Vendor_spawn", "_cart", "_total", "_coins"];
_Vendor_spawn = (_this call ML_fnc_Vendor_GetSpawns);
_cart = call ML_fnc_Vendor_GetCart;
_total = ML_VendorTotal;
_coins = [player] call ML_fnc_Client_GetCoins;

if ((count _cart) <= 0) exitWith {
  systemChat "You have nothing in your cart";
};

if (_coins < _total) exitWith {
  systemChat "Not enough Coins!";
  return false
};

{
  switch (_x call ML_fnc_Merchandise_GetCfg) do {
    case "CfgMagazines": {
      (_Vendor_spawn select 0) addItemCargoGlobal [_x, 1];
    }; 
    case "CfgWeapons": {
      (_Vendor_spawn select 0) addItemCargoGlobal [_x, 1];
    }; 
    case "CfgGlasses": {
      (_Vendor_spawn select 0) addItemCargoGlobal [_x, 1];
    }; 
    case "CfgVehicles": {
      private["_veh"];
      _veh = createVehicle [_x, getposATL (_Vendor_spawn select 1),[], 0, "NONE"];
    }; 
  };
} count _cart;

[player, -(ML_VendorTotal)] call ML_fnc_Client_SetCoins;
lbClear IDC_Vendor_CART_LIST;
ML_VendorCart = [];
ML_VendorTotal = 0;

ctrlSetText [IDC_Vendor_COINS_TEXT, 
             format["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]];
ctrlSetText [IDC_Vendor_TOTAL_COST, 
             format[(localize "STR_ML_Vendor_TOTAL"), strM(ML_VendorTotal)]];

return true