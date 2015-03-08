private ["_NPC_list", "_npc", "_quests"];
_NPC_list = [_this, 0, 0, [[]]] call BIS_fnc_param;

{
  _npc = (objectFromNetId _x);
  _quests = (_npc getVariable ["Quests", []]);
  {
    if(!(_x in (player getVariable ["ML_Quests_Current", []])) && !(_x in (player getVariable ["ML_Quests_Completed", []])))then{
      [_npc, _x, "Quest_Action", ML_fnc_Quests_Dialog, "Quest_Icon"] call ML_fnc_Quests_AddAction;
    };
  }forEach _quests;
}count _NPC_list;

true