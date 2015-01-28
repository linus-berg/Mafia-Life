private["_control_id"];
_control_id = [_this, 0, 0, [0]] call BIS_fnc_param;
([_control_id, true, true, true, true] call ML_fnc_GUI_ClientList)