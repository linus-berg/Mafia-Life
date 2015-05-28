#include "\ML_Functions\ML_Macros.h"

private ["_Coins", "_Rewards", "_BoxSpawn", "_VehicleSpawn"];

_Coins = [_this, 0, 0, [[]]] call BIS_fnc_param;
_Rewards = [_this, 1, 0, [[]]] call BIS_fnc_param;
_BoxSpawn = [_this, 2, 0, [""]] call BIS_fnc_param;
_VehicleSpawn = [_this, 3, 0, [""]] call BIS_fnc_param;
_Caller = [_this, 4, 0, [ObjNull]] call BIS_fnc_param;

_BoxSpawn = (missionNameSpace getVariable [_BoxSpawn, ObjNull]);
_VehicleSpawn = (missionNameSpace getVariable [_VehicleSpawn, ObjNull]);

CALL_F(ML_fnc_Client_SetCoins, [_Caller, _Coins]);

if (count _Rewards == 0) exitWith {
  return true
};

{
  switch ([(_x select 0)] call ML_fnc_Merchandise_GetCfg) do {
    case "CfgVehicles": {
      private["_veh", "_i"];
      for "_i" from 1 to (_x select 1) do {
        _veh = createVehicle [(_x select 0), getposATL _VehicleSpawn,[], 0, "CAN_COLLIDE"];
      };
    };
    case "ML_Item": {
    };
    default {
      _BoxSpawn addItemCargoGlobal [(_x select 0), (_x select 1)];
    };
  };
} count _Rewards;

return true