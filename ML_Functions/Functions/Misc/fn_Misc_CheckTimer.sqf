#include "\ML_Functions\ML_Macros.h"

private["_last"];
_last = (_this select 0) getVariable[(_this select 1), 0];
if ((diag_tickTime - _last) < (_this select 2)) exitWith { 
  return false
};

return true