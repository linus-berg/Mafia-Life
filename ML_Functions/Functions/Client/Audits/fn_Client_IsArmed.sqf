private["_player"];
_player = _this;
if ((primaryWeapon _player) != "") exitWith {true};
if ((secondaryWeapon _player) != "") exitWith {true};
if ((handgunWeapon _player) != "") exitWith {true};

false