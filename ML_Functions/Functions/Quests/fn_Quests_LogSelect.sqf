#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_index", "_quest_id", "_npc", "_quest", "_ctrl", "_txt"];
_index 	= [_this, 0, 0, [0]] call BIS_fnc_param;
_quest_id = lbValue [IDC_QUEST_LOG_QUEST_LIST, _index];
_npc = ObjectFromNetId(lbData [IDC_QUEST_LOG_QUEST_LIST, _index]);
_quest = _npc getVariable [format["Quest_%1", _quest_id], []];

disableSerialization;

_ctrl = ((uiNamespace getVariable ["ML_Quest_Log_Dialog", nil]) displayCtrl IDC_QUEST_LOG_QUEST_TEXT);
_txt = ([(_quest select 1), (_quest select 2)] call ML_fnc_Quests_FormatText);

_ctrl ctrlSetStructuredText parseText _txt;
[_ctrl] call BIS_fnc_ctrlTextHeight;

true