#include "dikcodes.h"
INV_shortcuts = true;

keyboard_interact_handler = {
	private["_ctrl"];
	_ctrl = _this select 0;
	
	if (!INV_shortcuts) exitWith {false};
	if (dialog) exitWith {closeDialog 0; false};

	private ["_civ", "_handled", "_i", "_range", "_dirV", "_pos", "_posFind", "_men", "_atms", "_atm"];

	//INTERACTIONS WITH PLAYERS, AI, ATM
	for [{_i=1}, {_i < 3}, {_i=_i+1}] do {
		if(vehicle player != player) exitWith {false};
		_range = _i;
		_dirV = vectorDir vehicle player;
		_pos = player modelToWorld [0,0,0];
		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
		_men    = nearestObjects [_posFind,["Man"], 1] - [player];
		_atms   = nearestObjects [_posFind,["Man"],2];
		_civ    = _men select 0;
		_atm	= _atms select 0;

		_handled = [player, _atm] call ML_fnc_Teller;
		if (_handled) exitWith {};
		
		_handled = [player, _civ] call ML_fnc_Interaction_Client;
		if (_handled) exitWith {};
		
		_handled = [player, _civ] call ML_fnc_Emporium;
		if (_handled) exitWith {};
	};

	if(_handled) exitWith { true };

	private["_vcl"];
	_vcl  = vehicle player;

	if(_vcl != player) exitWith {
		if(locked _vcl) exitWith {
			player groupchat "The vehicle is locked. Disembark by pressing Control + E"; 
			false 
		};
		if(speed _vcl > 30) exitWith {
			player groupchat "The vehicle is moving too fast"; 
			false 
		};
		[player, _vcl, false] call player_exit_vehicle;
		true
	};
	
	true
};


KeyUp_handler = {
	private["_handled", "_disp", "_key", "_shift", "_ctrl", "_alt"];

	_disp	= _this select 0;
	_key    = _this select 1;
	_shift  = _this select 2;
	_ctrl	= _this select 3;
	_alt	= _this select 4;
	
	_handled = false;
	
	private["_inVehicle"];
	_inVehicle = ((vehicle player) != player);
	
	switch _key do {
		case DIK_E: {			
			_handled = [_ctrl] call keyboard_interact_handler;
		};
	};
	
	if (_inVehicle && _key == DIK_E) exitWith {
		_inVehicle
	};	
	_handled
};



KeyDown_handler = {
	private["_handled", "_disp", "_key", "_shift", "_ctrl", "_alt"];
	_handled = false;
	
	_disp	= _this select 0;
	_key    = _this select 1;
	_shift  = _this select 2;
	_ctrl	= _this select 3;
	_alt	= _this select 4;
	
	private["_inVehicle", "_isDriver"];
	_inVehicle = ((vehicle player) != player);
	_isDriver = ((driver (vehicle player)) == player);
		
	switch _key do {
		case DIK_E: {
			_handled = INV_shortcuts;
		};
	};

	
	if (_inVehicle && _key == DIK_E) exitWith {
		_inVehicle
	};	
	_handled
};


keyboard_setup = {
	disableSerialization;
	private["_display"];
	_display = displayNull;
	waituntil {
		_display = findDisplay 46;
		if (isNull _display) exitWith {false};
		true
	};
	_display displaySetEventHandler ["KeyDown", "_this call KeyDown_handler"];
	_display displaySetEventHandler ["KeyUp", "_this call KeyUp_handler"];
};

[] spawn keyboard_setup;
