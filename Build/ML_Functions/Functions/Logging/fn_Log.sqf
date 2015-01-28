if(!(isNil "ML_Logging"))then{
	if(ML_Logging)then{	
		if((isnil "_this"))exitWith{diag_log "ERROR: NO VARIABLE TO LOG";};
		diag_log format["%1:%2 %3", _this select 0, _this select 1, _this select 2];
	};
};