while {true} do {
	private["_complete"];
	_complete = ([player] call ML_fnc_Client_Human) || isServer;
	if (_complete) exitWith {};
};

private["_player"];
_player = player;

playerstringarray = 
[
	"civ1","civ2","civ3","civ4","civ5","civ6","civ7","civ8","civ9","civ10",
	"civ11","civ12","civ13","civ14","civ15","civ16","civ17","civ18","civ19","civ20",
	"civ21","civ22","civ23","civ24","civ25","civ26","civ27","civ28","civ29","civ30",
	"civ31","civ32","civ33","civ34",
	"ins1","ins2","ins3","ins4","ins5","ins6",
	"cop1","cop2","cop3","cop4","cop5","cop6","cop7","cop8","cop9","cop10"
];


role = _player;
rolestring = str(_player);
rolenumber = (playerstringarray find rolestring) + 1;

//player groupChat format["role = %1, rolestring = %2,  rolenumber = %3", role, rolestring, rolenumber];

iscop = [_player] call ML_fnc_Client_SidePolice;
isciv = [_player] call ML_fnc_Client_SideCiv;
isins = [_player] call ML_fnc_Client_SideIns;

// Server uses these as well, need a way to readd to server
// Done in EH
//	_player addMPEventHandler ["MPKilled", { _this call player_handle_mpkilled }];
//	_player addMPEventHandler ["MPRespawn", { _this call player_handle_mprespawn }];