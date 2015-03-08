private ["_control_id", "_show_civ", "_show_cop", "_show_ins"];

_control_id = [_this, 0, 0, [0]] call BIS_fnc_param;
_show_civ = [_this, 1, true, [true]] call BIS_fnc_param;
_show_cop = [_this, 2, true, [true]] call BIS_fnc_param;
_show_ins = [_this, 3, true, [true]] call BIS_fnc_param;

private["_index", "_my_index"];
_index = 0;
_my_index = -1;

private["_player_variable"];
{
  _player_variable = _x;
  if (!isNull _player_variable) then {
    if (!([_player_variable] call ML_fnc_Client_Exists)) exitWith {};
    private["_is_civ", "_is_cop", "_is_ins"];
    _is_civ = [_player_variable] call ML_fnc_Client_SideCiv;
    _is_cop = [_player_variable] call ML_fnc_Client_SidePolice;
    _is_ins = [_player_variable] call ML_fnc_Client_SideIns;
    
    if (_is_civ && !(_show_civ)) exitWith {};
    if (_is_cop && !(_show_cop)) exitWith {};
    if (_is_ins && !(_show_ins)) exitWith {};
    
    private["_player_name"];
    _player_name = (name _player_variable);
    _index = lbAdd [_control_id, format ["%1 - (%2)", name(_x), _player_name]];
    lbSetData [_control_id, _index, str(_player_variable)];
    
    if (_player_variable == player) then {
      _my_index = _index;
    };
  };
}forEach (call BIS_fnc_listPlayers);

_my_index