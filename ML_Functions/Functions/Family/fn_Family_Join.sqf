#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_client", "_fID", "_invitations", "_family", "_members"];

_client = player;
_fID = [_this, 0, 0, [0]] call BIS_fnc_param;
_invitations = _client getVariable ["ML_Family_Invitations", []];
if(!(_fID in _invitations))exitWith{systemChat "You do not have an invitation to this family";};
_family = _fID call ML_fnc_Family_GetInfo;

_members = _family select 3;
_members pushBack [name _client, getPlayerUID _client];
_family set [3, _members];
ML_Family setVariable [str(_fID), _family, true];
_client setVariable ["ML_Family", [_fID, 0], true];
_client call ML_fnc_Data_Sync;

["ML_Network_Server_Data_Family_JoinGroup", [netId(_client), [_fID, 0]]] call ML_fnc_Network_ClientToServer;
["ML_Network_Server_Data_Family_SyncMembers", [_fID, _members]] call ML_fnc_Network_ClientToServer;