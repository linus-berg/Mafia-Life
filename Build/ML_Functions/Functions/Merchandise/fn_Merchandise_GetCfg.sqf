private["_merch"];
_merch = [_this, 0, "", [""]] call BIS_fnc_param;

switch (true) do
{
	case (isClass (configFile >> "CfgMagazines" >> _merch)) : {("CfgMagazines")};
	case (isClass (configFile >> "CfgWeapons" >> _merch)) : {("CfgWeapons")};
	case (isClass (configFile >> "CfgVehicles" >> _merch)) : {("CfgVehicles")};
	case (isClass (configFile >> "CfgGlasses" >> _merch)) : {("CfgGlasses")};
	default{"ML_Item"};
};