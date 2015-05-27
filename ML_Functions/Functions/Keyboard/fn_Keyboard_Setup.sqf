#include "\ML_Functions\ML_Macros.h"

disableSerialization;
private["_display"];
_display = displayNull;
waitUntil {
  _display = findDisplay 46;
  if (isNull _display) exitWith {
    return false
  };
  return true
};
ML_Keyboard_Status = true;

call ML_fnc_Keyboard_SetupKeys;

_display displaySetEventHandler ["KeyUp", "_this call ML_fnc_Keyboard_Handle;"];

return true