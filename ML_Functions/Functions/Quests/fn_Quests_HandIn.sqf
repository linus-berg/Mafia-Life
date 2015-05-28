#include "\ML_Functions\ML_Macros.h"

private ["_npc", "_caller", "_quest", "_quests", "_index", "_completed",
         "_quests_completed"];
_npc   = [_this, 0, 0, [ObjNull]] call BIS_fnc_param;
_caller   = [_this, 1, 0, [ObjNull]] call BIS_fnc_param;
_quest     = [_this, 3, 0, [[]]] call BIS_fnc_param;
_completed = false;

if (count (_quest select 6) > 0) then {
  if (!([_quest select 6, _caller] call ML_fnc_Quests_CheckComplete)) then {
    SystemChat "You do not have the required items!";
  } else {
    _completed = true;
  }
};

if (!_completed) exitWith {
  return false
};

_npc removeAction (missionNameSpace getVariable [(format["%1_Quest_Action_HandIn", (_quest select 0)]), 0]);

[(_quest select 4), (_quest select 5), (_quest select 7), (_quest select 8), _caller] call ML_fnc_Quests_Rewards;


_quests = (_caller getVariable ["ML_Quests_Current", []]);

if ([(_quest select 0), _npc] in _quests) then {
  _index = _quests find [(_quest select 0), _npc];
  _completed = ((_quests deleteAt _index) select 0);
  _caller setVariable ["ML_Quests_Current", _quests, true];
  _quests_completed = (_caller getVariable ["ML_Quests_Completed", []]);

  if !(_completed in _quests_completed) then {
    _quests_completed pushBack _completed;
    _caller setVariable ["ML_Quests_Completed", _quests_completed, true];

    ["ML_Info", ["Quest Completed!", "\ML_Images\Actions\Quest_Icon.paa", format["<t color='#01DF01'>You completed: '%1'!</t>", (_quest select 2)], "Quest_Complete"]] call ML_fnc_showNotification;
  };
};

return true