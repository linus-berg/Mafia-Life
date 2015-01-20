"ML_Network_Client" addPublicVariableEventHandler {
	(_this select 1) call ML_fnc_Network_Handle
};

[
	"ML_Network_Server_Data_Return", 
	{
		_this call ML_fnc_Data_Load;
	}
] call ML_fnc_Network_AddEvent;

[
	"ML_Network_Server_Data_Set", 
	{
		_this call ML_fnc_Data_Create;
	}
] call ML_fnc_Network_AddEvent;