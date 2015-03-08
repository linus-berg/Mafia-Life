#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

if (dialog) exitWith {
  closeDialog 0; 
  false
};
if(!(createDialog "ML_Quest_Log_Dialog"))exitWith{
  ML_LOG("Dialogue error"); 
  systemChat "Dialogue did not open. Please report this on our bug tracker"; 
  false
};

private ["_caller", "_quests", "_quest", "_image", "_index"];
_caller   = [_this, 0, 0, [objNull]] call BIS_fnc_param;
_quests = _caller getVariable ["ML_Quests_Current", []];

{
  _quest = (_x select 1) getVariable [format["Quest_%1", (_x select 0)], []];
  _image = "\ML_Images\GUI\False.paa";
  _index = lbAdd [IDC_QUEST_LOG_QUEST_LIST, (_quest select 1)];
  lbSetValue [IDC_QUEST_LOG_QUEST_LIST, _index, (_x select 0)];
  lbSetData [IDC_QUEST_LOG_QUEST_LIST, _index, netId(_x select 1)];
  
  if(([(_quest select 4), _caller] call ML_fnc_Quests_CheckComplete))then{
    _image = "\ML_Images\GUI\True.paa";
  };
  
  lbSetPicture [IDC_QUEST_LOG_QUEST_LIST, _index, _image];
}count _quests;
if((count _quests) > 0)then{
  lbSetCurSel [IDC_QUEST_LOG_QUEST_LIST, 0];
};

true