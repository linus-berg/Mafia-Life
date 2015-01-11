private["_player", "_value"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_value = [_this, 1, 0, [0]] call BIS_fnc_param;


if (!([_player] call ML_fnc_Client_Human)) exitWith {0};

private["_cvalue"];
_cvalue = [_player] call ML_fnc_Account_Get;
_cvalue = _cvalue + (if(_value < 0)then{_value min _cvalue}else{_value});
[_player, _cvalue] call ML_fnc_Account_Set;

_cvalue