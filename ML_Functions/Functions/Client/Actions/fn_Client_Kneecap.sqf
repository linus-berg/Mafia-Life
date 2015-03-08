#include "\ML_Functions\ML_Macros.h"

if ( !(player call ML_fnc_Client_IsArmed) && 
     !([player, ["sc_hammer", "sc_tire_iron", "sc_wrench", "sc_axe"]] 
      call ML_fnc_Inventory_HasItem) ) exitWith {
  systemChat "You are unarmed."; 

  return false
};

if !( _this call ML_fnc_Client_IsDefenceless ) exitWith {
  systemChat format["%1 is not defenceless.", name _this]; 

  return false
};

_this setHit ["legs", 1];

return true