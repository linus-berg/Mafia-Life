#include "\ML_Functions\ML_Macros.h"
private["_input"];
_input = _this;

if((typeName _input) != "STRING")then{
	_input = Str(_input);
	ML_LOG("WARNING: Input not string.");
};

("ML_ArmaSha256" callExtension _input)