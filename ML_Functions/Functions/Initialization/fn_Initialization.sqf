#include "\ML_Functions\ML_Macros.h"
enableSaving [false, false];
if(isNil "ML_Logging")then {
	ML_Logging = true;
};

If (isServer)exitWith{};

ExecSQF("Loops\client_loop.sqf");
ExecSQF("\ML_Core\Client\ML_VariableSetup.sqf");

ExecFSM "Coins\Paycheck.fsm"; //This is the paycheck loop
if (isNil "ML_Client_Account") then {
	[player, "ML_Client_Account", (3000 call ML_fnc_Cipher)] call ML_fnc_Variable_Init;
	[player, "ML_Client_Coins", (3000 call ML_fnc_Cipher)] call ML_fnc_Variable_Init;
	[player, "ML_Client_Permits", []] call ML_fnc_Variable_Init;
	[player, "ML_Quests_Current", []] call ML_fnc_Variable_Init;
	[player, "ML_Quests_Completed", []] call ML_fnc_Variable_Init;
};

call ML_fnc_Client_Array;
call ML_fnc_Keyboard_Setup;
[ML_QUESTLIST] call ML_fnc_Quests_Setup;