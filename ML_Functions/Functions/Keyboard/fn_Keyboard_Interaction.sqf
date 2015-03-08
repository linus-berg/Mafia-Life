private["_ctrl"];
_ctrl = _this;

if (!ML_Keyboard_Status) exitWith {false};
if (Dialog) exitWith {closeDialog 0; false};

private ["_civ", "_handled", "_i", "_range", "_dirV", "_pos", "_posFind", "_men", "_atms", "_atm"];

//INTERACTIONS WITH PLAYERS, AI, ATM
for [{_i=1}, {_i < 3}, {_i=_i+1}] do {
  if(vehicle player != player) exitWith {false};
  _range = _i;
  _dirV = vectorDir vehicle player;
  _pos = player modelToWorld [0,0,0];
  _posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
  _men  = nearestObjects [_posFind,["Man"], 1] - [player];
  _atms   = nearestObjects [_posFind,["Man"],2];
  _civ  = _men select 0;
  _atm  = _atms select 0;

  _handled = [player, _atm] call ML_fnc_Teller;
  if (_handled) exitWith {};
  
  _handled = [player, _civ] call ML_fnc_Interaction_Client;
  if (_handled) exitWith {};
  
  _handled = [player, _civ] call ML_fnc_Vendor;
  if (_handled) exitWith {};
};

if(_handled) exitWith { true };

true