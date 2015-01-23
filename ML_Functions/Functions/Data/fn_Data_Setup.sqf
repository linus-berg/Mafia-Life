#include "\ML_Core\UI\GUI.h"
#include "\ML_Functions\ML_Macros.h"

if (dialog) exitWith {
	closeDialog 0; 
	false
};
if(!(createDialog "ML_User_Register"))exitWith{
	diag_log "Dialogue did not open. Please report this on our bug tracker"; 
	false
};

buttonSetAction [IDC_USER_REGISTER_ACCOUNT, format[
		"
			[ctrlText %1, ctrlText %2, ctrlText %3] call ML_fnc_Data_Register;
		",
		IDC_USER_REGISTER_EMAIL,
		IDC_USER_REGISTER_PASSWORD,
		IDC_USER_REGISTER_PASSWORD_C
	]
];