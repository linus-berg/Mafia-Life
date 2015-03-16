#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = _this;
if ((primaryWeapon _player) != "" || (secondaryWeapon _player) != "" ||
    (handgunWeapon _player) != "") exitWith {
  return true
};

return false