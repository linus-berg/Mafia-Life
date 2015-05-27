#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_client", "_nationality", "_pfamily", "_families", "_invitations",
         "_family", "_index"];

if !(createDialog "Family_List_dialog") exitWith {
  ML_LOG("Dialogue error"); 
  systemChat "Dialogue did not open. Please report this on our bug tracker"; 
  return false
};

_client = player;
_nationality = [_this, 0, "", [""]] call BIS_fnc_param;

if (_client call ML_fnc_Family_InFamily) then {
  _pfamily = _client call ML_fnc_Family_GetPlayerFamily;
  if(_nationality != (_pfamily select 5)) exitWith {
    systemChat "Your family is not this nationality, get out of here fast!"; 
    return false
  };
  ctrlEnable [IDC_ML_FAMILY_LISTJOIN, false];
};

_families = ML_Family getVariable ["ML_Families", []];
_invitations = _client getVariable ["ML_Family_Invitations", []];

{
  _family = ML_Family getVariable [str(_x), []];
  if ((_family select 5) == _nationality) then {
    _index = lbAdd [IDC_ML_FAMILY_LISTL, (_family select 1)];
    lbSetValue [IDC_ML_FAMILY_LISTL, _index, (_family select 0)];
    
    if ((_family select 0) in _invitations) then {
      lbSetColor [IDC_ML_FAMILY_LISTL, _index, [0,0.8,0.2,1]];
    };
  };
} count _families;

buttonSetAction [IDC_ML_FAMILY_LISTJOIN, 
                 format["[lbValue [%1, lbCurSel %1]] call ML_fnc_Family_Join;",
                 IDC_ML_FAMILY_LISTL]];
