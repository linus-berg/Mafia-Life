if(_this)then{
	ML_Creation_Req = _this;
}else{
	if (dialog) exitWith {
		closeDialog 0; 
		false
	};
	if(!(createDialog "ML_User_Create"))exitWith{
		diag_log "Dialogue did not open. Please report this on our bug tracker"; 
		false
	};
};

