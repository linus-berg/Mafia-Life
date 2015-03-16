#include "\ML_Functions\ML_Macros.h"

private ["_client", "_gear", "_uniform", "_vest", "_backpack", "_goggles",
         "_headgear", "_assignedItems", "_primary", "_primary_i", "_handgun",
         "_handgun_i", "_container", "_uniform_w", "_uniform_m", "_uniform_i",
         "_backpack_w", "_backpack_m", "_backpack_i", "_vest_w", "_vest_m",
         "_vest_i"];
_client = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_gear = [_this, 1, [], [[]]] call BIS_fnc_param;
if((count _gear) <= 0) exitWith {
  SystemChat "ERROR: No gear list provided."; 
  return false
};
_uniform = _gear select 0;
_vest = _gear select 1;
_backpack = _gear select 2;
_goggles = _gear select 3;
_headgear = _gear select 4;
_assignedItems = _gear select 5;
_primary = _gear select 6;
_handgun = _gear select 8;

call ML_fnc_Inventory_ClearClient;

if(_goggles != "") then {
  _client forceAddUniform _uniform;
};
if(_headgear != "") then {
  _client addHeadgear _headgear;
};
if((count _assignedItems) != 0) then {
  {
    _client linkItem _x;
  } count _assignedItems;
};

if(_uniform != "") then {
  _client forceAddUniform _uniform;
  _uniform_w = _gear select 10;
  _uniform_m = _gear select 11;
  _uniform_i = _gear select 12;
  _container = uniformContainer _client;
  {
    _container addWeaponCargo [_x, (_uniform_w select 1) select _forEachIndex];
  } forEach (_uniform_w select 0);
  {
    _container addMagazineCargo [_x, 
                                 (_uniform_m select 1) select _forEachIndex];
  } forEach (_uniform_m select 0);
  {
    _container addItemCargo [_x, (_uniform_i select 1) select _forEachIndex];
  } forEach (_uniform_i select 0);
};

if(_backpack != "") then {
  _client addBackpack _backpack;
  _backpack_w = _gear select 13;
  _backpack_m = _gear select 14;
  _backpack_i = _gear select 15;
  _container = backpackContainer _client;
  {
    _container addWeaponCargo [_x, 
                               (_backpack_w select 1) select _forEachIndex];
  } forEach (_backpack_w select 0);
  {
    _container addMagazineCargo [_x, 
                                 (_backpack_m select 1) select _forEachIndex];
  } forEach (_backpack_m select 0);
  {
    _container addItemCargo [_x, (_backpack_i select 1) select _forEachIndex];
  } forEach (_backpack_i select 0);
};

if(_vest != "") then {
  _client addVest _vest;
  _vest_w = _gear select 16;
  _vest_m = _gear select 17;
  _vest_i = _gear select 18;
  _container = vestContainer _client;
  {
    _container addWeaponCargo [_x, (_vest_w select 1) select _forEachIndex];
  } forEach (_vest_w select 0);
  {
    _container addMagazineCargo [_x, (_vest_m select 1) select _forEachIndex];
  } forEach (_vest_m select 0);
  {
    _container addItemCargo [_x, (_vest_i select 1) select _forEachIndex];
  } forEach (_vest_i select 0);
};


if(_primary != "") then {
  _client addWeapon _primary;
  _primary_i = _gear select 7;
  {
    if(_x != "") then {
      _client addPrimaryWeaponItem _x;
    };
  } count _primary_i;
};

if(_handgun != "") then {
  _client addWeapon _handgun;
  _handgun_i = _gear select 9;
  {
    if(_x != "") then {
      _client addHandgunItem _x;
    };
  } count _handgun_i;
};

return true
