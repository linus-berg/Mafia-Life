#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

if (Dialog) exitWith {
  closeDialog 0; 
  false
};
if(!(createDialog "ML_User_Register"))exitWith{
  ML_LOG("ML_User_Register: Dialogue did not open. Please report this on our bug tracker") 
  false
};

buttonSetAction [IDC_USER_REGISTER_ACCOUNT, format[
    "
      [ctrlText %1, ctrlText %2, ctrlText %3] call ML_fnc_Data_Register;
      closeDialog 0;
    ",
    IDC_USER_REGISTER_EMAIL,
    IDC_USER_REGISTER_PASSWORD,
    IDC_USER_REGISTER_PASSWORD_C
  ]
];

private["_text", "_ctrl"];
_text = format["<t color='#FF4700' size='0.7'>
Welcome to Mafia Life %1!<br />
We are delighted to have you playing on our server, however before you can start playing there are a few rules and guidelines.<br />
<a color='#FF7D0A' underline='true' href='https://github.com/Infectiondg/Mafia-Life'>Rules</a><br />
After reading the rules all you have to do is register, password has to contain six to fifteen characters and one number.<br />
We hope you enjoy your stay on Mafia Life!<br />
Teamspeak: 127.0.0.1<br />
Useful Links<br />
<a color='#FF7D0A' underline='true' href='https://github.com/Infectiondg/Mafia-Life'>Mafia Life</a><br />
<a color='#FF7D0A' underline='true' href='https://github.com/Infectiondg/Mafia-Life'>Wiki</a><br />
<a color='#FF7D0A' underline='true' href='https://github.com/Infectiondg/Mafia-Life'>Bug Reports</a><br />
</t>", name player];
disableSerialization;
_ctrl = ((uiNamespace getVariable ["ML_User_Register_Dialog", nil]) displayCtrl IDC_USER_REGISTER_TEXT);
_ctrl ctrlSetStructuredText parseText _text;
[_ctrl] call BIS_fnc_ctrlTextHeight;