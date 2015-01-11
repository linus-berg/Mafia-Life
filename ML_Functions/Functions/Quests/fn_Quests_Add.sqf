private ["_npc", "_caller", "_quest", "_quests"];
_npc 	= [_this, 0, 0, [ObjNull]] call BIS_fnc_param;
_caller 	= [_this, 1, 0, [ObjNull]] call BIS_fnc_param;
_quest 		= [_this, 2, 0, [[]]] call BIS_fnc_param;

if (!([_caller] call ML_fnc_Client_Human)) exitWith {false};
if ([_npc] call ML_fnc_Client_Human) exitWith {false};

_npc removeAction (missionNameSpace getVariable [(format["%1_Quest_Action", (_quest select 0)]), 0]);

[_npc, (_quest select 0), "Quest_Action_HandIn", ML_fnc_Quests_HandIn, "Quest_HandIn"] call ML_fnc_Quests_AddAction;

_quests = (_caller getVariable ["ML_Quests_Current", []]);
if(!([(_quest select 0), _npc] in _quests))then{
	_quests pushBack [(_quest select 0), _npc]; // Use find to delete these when abandoning quests.
	_caller setVariable ["ML_Quests_Current", _quests, true];
};

["ML_Info", ["Quest Accepted!", "\ML_Images\Actions\Quest_Icon.paa", format["<t color='#01DF01'>You accepted: '%1'!</t>", (_quest select 1)]]] call ML_fnc_showNotification;

true