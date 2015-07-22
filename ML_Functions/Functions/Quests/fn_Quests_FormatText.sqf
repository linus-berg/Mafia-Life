#include "\ML_Functions\ML_Macros.h"

private ["_title", "_text"];
_title = [_this, 0, "No-Title", [""]] call BIS_fnc_param;
_text = [_this, 1, "No-Text", [""]] call BIS_fnc_param;

return (format["<t align='center' size='1.5' color='#660000'>%1</t><br/><t align='left' size='0.8' color='#484848'>%2</t>", _title, _text])
