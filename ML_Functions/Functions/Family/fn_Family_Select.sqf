#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

private ["_client", "_fID", "_invitations", "_family", "_members"];

_client = player;
_index = [_this, 0, 0, [0]] call BIS_fnc_param;
_fID = lbValue[IDC_ML_FAMILY_LISTL, _index];
_family = _fID call ML_fnc_Family_GetInfo;

_text = format[
    "
    <t align='center' size='1.5' color='#C80000'>%1</t><br/>
    <t align='left' size='0.6' color='#F8F8F8'>
    Boss: %2<br /><br />
    --Members--<br />
    ", 
    (_family select 1),
    ((_family select 2) select 0)
];

_members = _family select 3;

{
    if(!isNull ((_x select 1) call BIS_fnc_getUnitByUid))then{
        _text = format["%1<t color='#ABD473'>%2</t><br />", _text, (_x select 0)];
    }else{
        _text = format["%1%2<br />", _text, (_x select 0)];
    };
}count _members;

_text = _text + "<br />";

disableSerialization;
_ctrl = ((uiNamespace getVariable ["ML_Family_List_Dialog", nil]) displayCtrl IDC_ML_FAMILY_LISTINFO);
_ctrl ctrlSetStructuredText parseText _text;
[_ctrl] call BIS_fnc_ctrlTextHeight;