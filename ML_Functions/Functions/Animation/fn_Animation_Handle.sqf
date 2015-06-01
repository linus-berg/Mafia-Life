#include "\ML_Functions\ML_Macros.h"

disableSerialization;
private ["_animation"];
_player = player;
_animation = (_this select 0) select 1;
_state = _this select 1;

switch _animation do {
  case "acts_carfixingwheel": {
    if (_state) then {
      disableUserInput false;
    } else {
      disableUserInput true;
    };
  };
  case "ainvpknlmstpsnonwnondnon_medic_1": {
    if (_state) then {
      disableUserInput false;
      [player, "ML_Item_Bandages", 1] spawn ML_fnc_Inventory_RemoveItem;
      player setDamage 0;
    } else {
      disableUserInput true;
    };
  };
};

return true