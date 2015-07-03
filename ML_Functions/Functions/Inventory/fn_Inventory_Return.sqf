#include "\ML_Functions\ML_Macros.h"

private ["_player", "_return", "_container"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

_return = [];

_return pushBack uniform _player;
_return pushBack vest _player;
_return pushBack backpack _player;
_return pushBack goggles _player;
_return pushBack headgear _player;
_return pushBack assignedItems _player;

_return pushBack primaryWeapon _player;
_return pushBack primaryWeaponItems _player;

_return pushBack handgunWeapon _player;
_return pushBack handGunItems _player;

_container = uniformContainer _player;
_return pushBack (getWeaponCargo _container);
_return pushBack (getMagazineCargo _container);
_return pushBack (getItemCargo _container);

_container = backpackContainer _player;
_return pushBack (getWeaponCargo _container);
_return pushBack (getMagazineCargo _container);
_return pushBack (getItemCargo _container);

_container = vestContainer _player;
_return pushBack (getWeaponCargo _container);
_return pushBack (getMagazineCargo _container);
_return pushBack (getItemCargo _container);

return _return