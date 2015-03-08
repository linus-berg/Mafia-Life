#include "\ML_Functions\ML_Macros.h"

if ( isNull (_this select 0) ) exitWith {
  return false
};
if !( (_this select 0) isKindOf "CAManBase" ) exitWith {
  return false
};
if !( _this call ML_fnc_Client_Exists ) exitWith { 
  return false
};
return (isPlayer (_this select 0))