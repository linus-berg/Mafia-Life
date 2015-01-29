#include "\ML_Functions\ML_Macros.h"

private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

if(ML_Data_Register)then{
	call ML_fnc_Data_Setup;
	ML_Data_Register = false;
};


switch (true) do{
	case isCop: {
	};
	case isCiv: {
	};
	case isIns: {
	};
};