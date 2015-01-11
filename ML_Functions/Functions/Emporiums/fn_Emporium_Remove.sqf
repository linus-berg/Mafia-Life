#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"
private["_index", "_price"];
_index = [_this, 0, 0, [0]] call BIS_fnc_param;
_price = [_this, 1, 0, [0]] call BIS_fnc_param;
if(_index == -1)exitWith{systemChat "No Item selected";};

lbDelete [IDC_EMPORIUM_CART_LIST, _index];
systemChat format ["Index: %1 Price: %2", _index, _price];
ML_EmporiumCart deleteAt _index;
ML_EmporiumTotal = ML_EmporiumTotal - _price;
ctrlSetText [IDC_EMPORIUM_TOTAL_COST, format[(localize "STR_ML_EMPORIUM_TOTAL"), strM(ML_EmporiumTotal)]];

true