private["_handled"];

if (!ML_Keyboard_Status) exitWith {false};
if (Dialog) exitWith {closeDialog 0; false};

_handled = player call ML_fnc_Quests_LogFill;

if(!_handled) exitWith {false};

true