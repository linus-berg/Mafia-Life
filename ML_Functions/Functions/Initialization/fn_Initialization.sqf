#include "\ML_Functions\ML_Macros.h"
enableSaving [false, false];
if(isNil "ML_Logging")then {
	ML_Logging = true;
};

If (isServer)exitWith{};
ML_LOG("Initializing Mafia Life Client")
player setVariable ["ML_Data_Loaded", false, true];
ML_Data_Register = false;
call ML_fnc_Inventory_ClearClient;

call ML_fnc_Network_ClientSetup;

["ML_Network_Server_Data_Init", netId(player)] call ML_fnc_Network_ClientToServer;
ML_LOG("Calling server to load statistics.")

ExecSQF("Loops\client_loop.sqf");
ExecSQF("\ML_Core\Client\ML_VariableSetup.sqf");

ExecFSM "Coins\Paycheck.fsm"; //This is the paycheck loop

call ML_fnc_Client_Array;
call ML_fnc_Keyboard_Setup;

[ML_QUESTLIST] call ML_fnc_Quests_Setup;

ML_LOG("Client set up completed.")