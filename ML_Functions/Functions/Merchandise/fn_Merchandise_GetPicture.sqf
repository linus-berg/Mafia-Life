private["_cfg"];
_cfg = (configFile >> ([_this] call ML_fnc_Merchandise_GetCfg) >> _this);
if(!(isText(_cfg >> "picture")))exitWith{""};
(getText(_cfg >> "picture"))