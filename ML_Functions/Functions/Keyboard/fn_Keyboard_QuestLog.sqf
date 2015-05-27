#include "\ML_Functions\ML_Macros.h"

private["_handled"];

if !(ML_Keyboard_Status) exitWith {
  return false
};
if (Dialog) exitWith {
  closeDialog 0;
  return false
};


_handled = player call ML_fnc_Quests_LogFill;

if !(_handled) exitWith {
  return false
};

return true