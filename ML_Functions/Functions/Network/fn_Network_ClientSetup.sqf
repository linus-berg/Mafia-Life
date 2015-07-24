#include "\ML_Functions\ML_Macros.h"

"ML_Network_Client" addPublicVariableEventHandler {
  (_this select 1) call ML_fnc_Network_Handle
};

[
  "ML_Network_Client_Data_Return", 
  {
    [player, (_this select 0)] call ML_fnc_Data_SetGear;
    player setPosATL (_this select 1);
    player setVariable ["ML_Data_Loaded", true, true];
  }
] call ML_fnc_Network_AddEvent;

[
  "ML_Network_Client_Data_Register", 
  {
    call ML_fnc_Data_Setup;
  }
] call ML_fnc_Network_AddEvent;

[
  "ML_Network_Client_Family_Leader", 
  {
    (GroupFromNetID(_this select 0)) selectLeader 
    (ObjectFromNetID (_this select 1));
  }
] call ML_fnc_Network_AddEvent;

[
  "ML_Network_Client_Mail_Open", 
  {
    player setVariable ["ML_Client_Mail", _this, true];
    call ML_fnc_Mail_Dialog;
  }
] call ML_fnc_Network_AddEvent;

[
  "ML_Network_Client_Notification", 
  {
    _this call ML_fnc_Notify;
  }
] call ML_fnc_Network_AddEvent;
