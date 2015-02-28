#include "\ML_Functions\Headers\ASCII.h"
private ["_player"];
_player = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _player) exitWith {sideUnknown};

private["_player_str", "_data", "_ch1", "_ch2"];
_player_str = toUpper(str(_player));
_data = toArray _player_str;
_ch1 = (_data select 1);
_ch2 = (_data select 2);

if (_ch1 == ASCII_P && _ch2 == ASCII_F) exitWith { east};            // o pf
if (_ch1 == ASCII_I && _ch2 == ASCII_V) exitWith { civilian };        // c iv
if (_ch1 == ASCII_N && _ch2 == ASCII_S) exitWith { resistance };    // i ns
if (_ch1 == ASCII_O && _ch2 == ASCII_P) exitWith { west };            // c op

sideUnknown