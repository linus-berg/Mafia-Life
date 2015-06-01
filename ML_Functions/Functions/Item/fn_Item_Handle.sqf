#include "\ML_Functions\ML_Macros.h"

disableSerialization;
private ["_control", "_index", "_function"];
_control = _this select 0;
_index = _this select 1;

_item = _control lbData _index;
if (_item == "") exitWith {
  return false
};

_function = getText (configFile >> "CfgMagazines" >> _item >> "Function");

if (_function == "") exitWith {
  return false
};

_function = missionNamespace getVariable (format["ML_fnc_Item_%1", _function]);

call _function;

return true