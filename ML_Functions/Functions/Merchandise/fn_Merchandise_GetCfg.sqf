#include "\ML_Functions\ML_Macros.h"

private["_merch"];
_merch = [_this, 0, "", [""]] call BIS_fnc_param;

switch (true) do {
  case (isClass (configFile >> "CfgMagazines" >> _merch)): {
    return ("CfgMagazines")
  };
  case (isClass (configFile >> "CfgWeapons" >> _merch)): {
    return ("CfgWeapons")
  };
  case (isClass (configFile >> "CfgVehicles" >> _merch)): {
    return ("CfgVehicles")
  };
  case (isClass (configFile >> "CfgGlasses" >> _merch)): {
    return ("CfgGlasses")
  };
  default{
    return "ML_Item"
  };
};