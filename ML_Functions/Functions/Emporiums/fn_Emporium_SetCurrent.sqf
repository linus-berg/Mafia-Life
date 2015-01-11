private["_emporium"];
_emporium = _this;
if (isNull _emporium) exitWith {};
if (typeName _emporium != "OBJECT") exitWith {};

player setVariable ["ML_CurrentEmporium", _emporium];