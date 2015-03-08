#include "\ML_Functions\ML_Macros.h"

if( _this <= 0 ) exitWith {
  return true
};

return (_this in ([player, "ML_Client_Permits"] call ML_fnc_Variable_Get))