#include "\ML_Functions\ML_Macros.h"

private ["_npc", "_quest_id", "_var", "_fnc", "_picture", "_quest",
         "_action_name"];
_npc = [_this, 0, 0, [objNull]] call BIS_fnc_param;
_quest_id = [_this, 1, 0, [0]] call BIS_fnc_param;
_var = [_this, 2, 0, [""]] call BIS_fnc_param;
_fnc = [_this, 3, 0, [{}]] call BIS_fnc_param;
_picture = [_this, 4, 0, [""]] call BIS_fnc_param;
_quest  = (_npc getVariable [format["Quest_%1", _quest_id], []]);

_action_name = format["<img size='2' image='\ML_Images\Actions\%2.paa'/> %1", (_quest select 2), _picture];

missionNameSpace setVariable [format["%1_%2", _quest_id, _var], (_npc addAction [_action_name, _fnc, _quest, 1.5, true, true, ""])];

return true