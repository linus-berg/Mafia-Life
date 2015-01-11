#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
private["_emporium_spawn", "_cart", "_total", "_coins"];
_emporium_spawn = [ML_BOXSPAWN(_this), ML_VEHICLESPAWN(_this)];
_cart = ML_EmporiumCart;
_total = ML_EmporiumTotal;
_coins = [player] call ML_fnc_Client_GetCoins;
if((count _cart) <= 0)exitWith{systemChat "You have nothing in your cart";};
if (_coins < _total) exitWith {systemChat "Not enough Coins!"; false};

{
	switch ([_x] call ML_fnc_Merchandise_GetCfg) do{
		case "CfgMagazines": {
			(_emporium_spawn select 0) addItemCargoGlobal [_x, 1];
		}; 
		case "CfgWeapons": {
			(_emporium_spawn select 0) addItemCargoGlobal [_x, 1];
		}; 
		case "CfgGlasses": {
			(_emporium_spawn select 0) addItemCargoGlobal [_x, 1];
		}; 
		case "CfgVehicles": {
			private["_veh"];
			_veh = createVehicle [_x, getposATL (_emporium_spawn select 1),[], 0, "CAN_COLLIDE"];
		}; 
	};
}count _cart;

[player, -(ML_EmporiumTotal)] call ML_fnc_Client_SetCoins;
lbClear IDC_EMPORIUM_CART_LIST;
ML_EmporiumCart = [];
ML_EmporiumTotal = 0;

ctrlSetText [IDC_EMPORIUM_COINS_TEXT, format["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]];
ctrlSetText [IDC_EMPORIUM_TOTAL_COST, format[(localize "STR_ML_EMPORIUM_TOTAL"), strM(ML_EmporiumTotal)]];

true