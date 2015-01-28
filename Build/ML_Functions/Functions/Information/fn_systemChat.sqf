private["_message", "_var"];
_message 	= _this select 0;
_info		= _this select 1;
_var		= _this select 2;
if(!(isNil "_var"))then{
	_message = _message + " " + _info;
	if((typeName _var) == "ARRAY")then{
		for "_i" from 0 to (count _var)-1 do {
			if((typeName(_var select _i)) == "STRING")then{
				_message = _message + " #" + Str(_i+1) + ":" + (_var select _i);
			}else{
				_message = _message + " #" + Str(_i+1) + ":" + Str(_var select _i);
			};
		};
	}else{
		if((typeName _var) == "STRING")then{
			_message = _message + " " + _var;
		}else{
			_message = _message + " " + Str(_var);
		};
	};
	systemChat _message;
}else{
	systemChat _message;
};