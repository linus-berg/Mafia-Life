#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if(ML_Data_Register)then{
	call ML_fnc_Data_Setup;
	ML_Data_Register = false;
};

if(!(isNil "ML_Data_Pos"))then{
	player setPosATL ML_Data_Pos;
	ML_Data_Pos = nil;
	player setVariable ["ML_Data_Loaded", true, true];
};
//removeAllWeapons _player;

switch (true) do{
	case isCop: {
		/*_player addWeapon "ML_Weapon_Revolver"; 
		_player addMagazines ["6Rnd_45ACP_Cylinder", 6];*/
	};
	case isCiv: {
	};
	case isIns: {
	};
};