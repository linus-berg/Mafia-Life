private["_handled", "_key", "_shift", "_ctrl", "_alt"];
_handled = false;

_key    	= [_this, 1, 0, [0]] call BIS_fnc_param;
_shift  	= [_this, 2, 0, [0]] call BIS_fnc_param;
_ctrl	= [_this, 3, 0, [0]] call BIS_fnc_param;
_alt		= [_this, 4, 0, [0]] call BIS_fnc_param;
	
switch _key do {
	case ML_Keyboard_Key_Interaction: {
		_handled = _ctrl call ML_fnc_Keyboard_Interaction;
	};
	case ML_Keyboard_Key_QuestLog: {
		_handled = call ML_fnc_Keyboard_QuestLog;
	};
};

_handled