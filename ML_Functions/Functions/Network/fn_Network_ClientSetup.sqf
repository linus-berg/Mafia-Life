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
		ML_Data_Register = _this;
	}
] call ML_fnc_Network_AddEvent;