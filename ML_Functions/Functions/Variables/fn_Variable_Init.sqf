private["_object", "_variable", "_value"];

_object = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_variable = [_this, 1, "", [""]] call BIS_fnc_param;
_value = [_this, 2, 0, [[]]] call BIS_fnc_param;

//check if it already has a value
if ((_object == player)) then {
	private["_current_value"];
	_current_value = missionNameSpace getVariable _variable;
	if (not(isNil "_current_value")) exitWith {};
	
	missionNamespace setVariable [_variable, _value];
	//_object setVariable [_variable, _value, true];
	[_object, _variable, _value] call CBA_fnc_setVarNet;
}
else {
	[_object, _variable, _value] call CBA_fnc_setVarNet;
};