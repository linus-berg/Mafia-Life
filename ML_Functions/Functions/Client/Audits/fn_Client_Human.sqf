if (isNull (_this select 0))exitWith {false};
if !((_this select 0) isKindOf "CAManBase") exitWith {false};
if (not(_this call ML_fnc_Client_Exists)) exitWith { false};
(isPlayer (_this select 0))