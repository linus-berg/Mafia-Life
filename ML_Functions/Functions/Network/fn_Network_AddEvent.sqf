private ["_handlers", "_eventType", "_handler"];

_eventType = [_this, 0, 0, [""]] call BIS_fnc_param;
_handler = [_this, 1, {}, [{}]] call BIS_fnc_param;

_handlers = ML_Network_Handlers getVariable _eventType;

if (isNil "_handlers") then {
	ML_Network_Handlers setVariable [_eventType, [_handler]];
} else {
	_handlers pushBack _handler;
};

true