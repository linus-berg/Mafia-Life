#include "\ML_Functions\ML_Macros.h"

ML_LOG("_______MAFIA LIFE V." + str _VERSION_ + "_______")
enableSaving [false, false];
if(isNil "ML_Logging")then {
  ML_Logging = true;
};

If (isServer)exitWith{};

ML_LOG("Initializing Mafia Life Client")

//Database variables
player setVariable ["ML_Data_Loaded", false, true];
ML_Data_Register = false;
//---

//Exec FSM loops.
ExecFSM "\ML_Functions\Functions\Coins\Coins.FSM";
//---

//Development scripts, will not be in final version.
ExecSQF("\ML_Core\Client\ML_VariableSetup.sqf"); //Remove this and load ATMs from server.
//---

//Set up all the needed scripts.
//call ML_fnc_Inventory_ClearClient;
call ML_fnc_Network_ClientSetup;
call ML_fnc_Client_Setup;
call ML_fnc_Keyboard_Setup;
[ML_QUESTLIST] call ML_fnc_Quests_Setup;
//---

//Wait for player to spawn in-game, then call the server.
[] spawn {
  disableSerialization;
  waitUntil {!isNull ([] call bis_fnc_displayMission) && ML_ServerInitialized};
  ML_LOG("Calling server to load statistics.")
  ["ML_Network_Server_Data_Init", netId(player)] call ML_fnc_Network_ClientToServer;
  ML_LOG("Client set up completed.")
};
//---
