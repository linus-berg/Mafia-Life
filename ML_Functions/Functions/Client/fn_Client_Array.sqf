while {true} do {
	private["_complete"];
	_complete = ([player] call ML_fnc_Client_Human) || isServer;
	if (_complete) exitWith {};
};

private["_player"];
_player = player;

isCop = [_player] call ML_fnc_Client_SidePolice;
isCiv = [_player] call ML_fnc_Client_SideCiv;
isIns = [_player] call ML_fnc_Client_SideIns;

/*switch (true) do{
	case isCop: {
	};
	case isCiv: {
	};
	case isIns: {
	};
};*/
_player setVariable ["ML_Role", _player, true];
_player setVariable ["ML_RoleString", Str(_player), true];
_player setVariable ["ML_RoleNumber", ([Str(_player), 4] call BIS_fnc_trimString), true];
