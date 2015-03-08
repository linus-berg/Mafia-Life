private["_handlers", "_eventType", "_params"];
_eventType = [_this, 0, 0, [""]] call BIS_fnc_param;
_params = [_this, 1, nil, [[]]] call BIS_fnc_param;

_handlers = ML_Network_Handlers getVariable _eventType;

if (!isNil "_handlers") then {
  {
    if (!isNil "_x") then {
      if (isNil "_params") then {
        call _x;
      } else {
        _params call _x;
      };
    };
  } forEach _handlers;
};
true