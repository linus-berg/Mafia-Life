private["_client"];
_client = ([_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param);
if(!(_client getVariable ["ML_Data_Loaded", false]))exitWith{Diag_log "ERROR: Attempted save without having loaded."; false};
["ML_Network_Server_Data_Sync", netId(_client)] call ML_fnc_Network_ClientToServer;
