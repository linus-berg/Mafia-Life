private["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if ([_player] call ML_fnc_Client_Human) exitWith {
	([_player] call ML_fnc_Client_SideHuman)
};
([_player] call ML_fnc_Client_SideAI)