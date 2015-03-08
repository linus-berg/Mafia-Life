#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_index", "_price", "_item"];
_index   = [_this, 0, 0, [0]] call BIS_fnc_param;
_price   = [_this, 1, 0, [0]] call BIS_fnc_param;
_item   = [_this, 2, "", [""]] call BIS_fnc_param;

switch ([_item] call ML_fnc_Merchandise_GetCfg) do{
  case "CfgMagazines": {
    [player, _item, 1] call ML_fnc_Inventory_RemoveItem;
  }; 
  case "CfgWeapons": {
    [player, _item, 1] call ML_fnc_Inventory_RemoveItem;
  }; 
  case "CfgGlasses": {
    [player, _item, 1] call ML_fnc_Inventory_RemoveItem;
  }; 
  case "CfgVehicles": {
    //Ignore this for now
  }; 
};
[player, _price] call ML_fnc_Client_SetCoins;

lbDelete [IDC_Vendor_SELL_LIST, _index];
ctrlSetText [IDC_Vendor_COINS_TEXT, format ["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]];



true