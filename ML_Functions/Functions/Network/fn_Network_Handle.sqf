#include "\ML_Functions\ML_Macros.h"

private["_handlers", "_eventType", "_params"];
_eventType = [_this, 0, 0, [""]] call BIS_fnc_param;
_params = [_this, 1, nil, [[]]] call BIS_fnc_param;
diag_Log format["Handling: %1", _this];
_handlers = ML_Network_Handlers getVariable _eventType;

if !( isNil "_handlers" ) then {
  {
    if !( isNil "_x" ) then {
      if ( isNil "_params" ) then {
        call _x;
      } else {
        diag_Log format["Handling 2: %1", _params];
        _params call _x;
      };
    };
  } forEach _handlers;
};

return true