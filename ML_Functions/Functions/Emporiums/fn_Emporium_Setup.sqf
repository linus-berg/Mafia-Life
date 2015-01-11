#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private["_emporium", "_emporium_list"];
_emporium = _this;
_emporium_list = ML_STOCK(_emporium);

if(!((player call ML_fnc_Client_SideID) in ML_SIDE(_emporium)))exitWith{systemChat "This emporium is not for your current side"; false};
if(!(createDialog "Emporium_dialog"))exitWith{ML_LOG("Dialogue error"); systemChat "Dialogue did not open. Please report this on our bug tracker"; false};

ML_EmporiumCart = [];
ML_EmporiumTotal = 0;
_emporium call ML_fnc_Emporium_SetCurrent;
private["_index"];
{
	if((_x select 2) == 1)then{
		_index = lbAdd [IDC_EMPORIUM_BUY_LIST, ((_x select 0) call ML_fnc_Merchandise_GetName)];
		lbSetData [IDC_EMPORIUM_BUY_LIST, _index, Str(_x select 5)];
		lbSetValue [IDC_EMPORIUM_BUY_LIST, _index, (_x select 1)];
		lbSetPicture [IDC_EMPORIUM_BUY_LIST, _index, ((_x select 0) call ML_fnc_Merchandise_GetPicture)];
		lbSetTooltip [IDC_EMPORIUM_BUY_LIST, _index, format["Price: %1€", (_x select 1)]];
	};
}count _emporium_list;
_emporium_list call ML_fnc_Emporium_SetupSell;

ctrlSetText [IDC_EMPORIUM_COINS_TEXT, format ["Coins: %1€", strM([player] call ML_fnc_Client_GetCoins)]];
ctrlSetText [IDC_EMPORIUM_TOTAL_COST, format[(localize "STR_ML_EMPORIUM_TOTAL"), strM(ML_EmporiumTotal)]];

buttonSetAction [IDC_EMPORIUM_ADD_CART, format["[(lbCurSel %1), lbValue [%1, lbCurSel %1], ([ctrlText %2] call ML_fnc_String_ToInt)] call ML_fnc_Emporium_AddToCart;", IDC_EMPORIUM_BUY_LIST, IDC_EMPORIUM_CART_AMOUNT]];
buttonSetAction [IDC_EMPORIUM_BUY_ACTION, format["%1 call ML_fnc_Emporium_Purchase;", _emporium]];
buttonSetAction [IDC_EMPORIUM_CART_REMOVE, format["[lbCurSel %1, lbValue [%1, lbCurSel %1]] call ML_fnc_Emporium_Remove;", IDC_EMPORIUM_CART_LIST]];
buttonSetAction [IDC_EMPORIUM_SELL_ACTION, format["[lbCurSel %1, lbValue [%1, lbCurSel %1], lbData [%1, lbCurSel %1]] call ML_fnc_Emporium_Sell;", IDC_EMPORIUM_SELL_LIST]];

true