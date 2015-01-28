private["_cfg"];
_cfg = _this;

if(typeName _cfg != "CONFIG")exitWith{};
if(!(isText(_cfg)))exitWith{};

missionNamespace getVariable (getText(_cfg))