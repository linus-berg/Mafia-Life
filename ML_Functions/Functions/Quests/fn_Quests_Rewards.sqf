private ["_Rewards", "_BoxSpawn", "_VehicleSpawn"];

_Rewards = [_this, 0, 0, [[]]] call BIS_fnc_param;
_BoxSpawn = [_this, 1, 0, [""]] call BIS_fnc_param;
_VehicleSpawn = [_this, 2, 0, [""]] call BIS_fnc_param;
_Caller = [_this, 3, 0, [ObjNull]] call BIS_fnc_param;

_BoxSpawn = (missionNameSpace getVariable [_BoxSpawn, ObjNull]);
_VehicleSpawn = (missionNameSpace getVariable [_VehicleSpawn, ObjNull]);

{
  switch ([(_x select 0)] call ML_fnc_Merchandise_GetCfg) do{
    case "CfgVehicles" : {
      private["_veh", "_i"];
      for "_i" from 1 to (_x select 1) do {
        _veh = createVehicle [(_x select 0), getposATL _VehicleSpawn,[], 0, "CAN_COLLIDE"];
      };
    };
    case "ML_Item" : {
      [_Caller, (_x select 1)] call ML_fnc_Client_SetCoins;
    };
    default{
      _BoxSpawn addItemCargoGlobal [(_x select 0), (_x select 1)];
    };
  };
}count _Rewards;

true