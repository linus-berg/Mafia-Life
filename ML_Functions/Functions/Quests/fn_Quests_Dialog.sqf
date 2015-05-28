#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

if (dialog) exitWith {
  closeDialog 0; 
  return false
};
if !(createDialog "ML_Quest_Dialog") exitWith {
  ML_LOG("Dialogue error"); 
  systemChat "Dialogue did not open. Please report this on our bug tracker"; 
  return false
};

private["_npc", "_caller", "_quest"];
_npc   = [_this, 0, 0, [objNull]] call BIS_fnc_param;
_caller   = [_this, 1, 0, [objNull]] call BIS_fnc_param;
_quest   = [_this, 3, 0, [[]]] call BIS_fnc_param;

buttonSetAction [IDC_QUEST_ACCEPT, 
                 format["closeDialog 0; [%1, %2, %3] call ML_fnc_Quests_Add;",
                        _npc, _caller, _quest]];

disableSerialization;
private["_ctrl", "_txt"];

_ctrl = ((uiNamespace getVariable ["ML_Quest_Dialog", nil]) displayCtrl 
         IDC_QUEST_TEXT);

_txt = ([(_quest select 2), (_quest select 3)] call ML_fnc_Quests_FormatText);

_ctrl ctrlSetStructuredText parseText _txt;

[_ctrl] call BIS_fnc_ctrlTextHeight;

