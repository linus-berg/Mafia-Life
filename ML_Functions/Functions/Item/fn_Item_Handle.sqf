#include "\ML_Functions\ML_Macros.h"

disableSerialization;
private ["_control", "_index"];
_control = _this select 0;
_index = _this select 1;
diag_log format ["%1 %2 %3", _this, _control, _index];
diag_log format ["%1 %2", _control lbText _index, _control lbData _index];

_item = _control lbData _index;
if (_item == "") exitWith {
  return false
};

switch _item do {
  case "ML_Item_BossHat": {
    systemChat "This is the boss' hat, you should return it.";
  };
  default {
    systemChat "This item does not have a function.";
  };
};

return true