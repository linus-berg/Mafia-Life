#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = _this;

if !([_player] call ML_fnc_Client_Human) exitWith {
  return false
};

private["_stunned", "_restrained"];
_stunned = _player getVariable ["ML_Defenceless", false];
_restrained = _player getVariable ["ML_Detained", false];

return (_stunned || _restrained)