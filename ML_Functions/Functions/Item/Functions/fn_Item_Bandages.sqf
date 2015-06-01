#include "\ML_Functions\ML_Macros.h"

if (getDammage player <= 0) exitWith {
  systemChat "You are not injured.";
  return false
};

if (vehicle player != player) exitWith {
  systemChat "You can not use this item in a vehicle";
  return false
};

closeDialog 0;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";

return true