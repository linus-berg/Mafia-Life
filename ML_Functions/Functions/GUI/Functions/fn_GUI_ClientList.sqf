private ["_control_id", "_show_civ", "_show_cop", "_show_ins", "_show_opf"];

_control_id = [_this, 0, 0, [0]] call BIS_fnc_param;
_show_civ = [_this, 1, true, [true]] call BIS_fnc_param;
_show_cop = [_this, 2, true, [true]] call BIS_fnc_param;
_show_ins = [_this, 3, true, [true]] call BIS_fnc_param;
_show_opf = [_this, 4, true, [true]] call BIS_fnc_param;

private["_index", "_my_index"];
_index = 0;
_my_index = -1;
private["_c"];
_c = 0;
while { _c <  (count playerstringarray) } do {
	private["_player_variable_name", "_player_variable"];
	
	_player_variable_name = playerstringarray select _c;
	_player_variable = missionNamespace getVariable [_player_variable_name, objNull];
	if (!isNull _player_variable) then {
		if (not([_player_variable] call ML_fnc_Client_Exists)) exitWith {};
		private["_is_civ", "_is_cop", "_is_ins", "_is_opf"];
		_is_civ = [_player_variable] call ML_fnc_Client_SideCiv;
		_is_cop = [_player_variable] call ML_fnc_Client_SidePolice;
		_is_ins = [_player_variable] call ML_fnc_Client_SideIns;
		
		if (_is_civ && not(_show_civ)) exitWith {};
		if (_is_cop && not(_show_cop)) exitWith {};
		if (_is_ins && not(_show_ins)) exitWith {};
		
		private["_player_name"];
		_player_name = (name _player_variable);
		_index = lbAdd [_control_id, format ["%1 - (%2)", _player_variable_name, _player_name]];
		lbSetData [_control_id, _index, str(_player_variable)];
		
		if (_player_variable == player) then {
			_my_index = _index;
		};
	};
	_c = _c + 1;
};

_my_index