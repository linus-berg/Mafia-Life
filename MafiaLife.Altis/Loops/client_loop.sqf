_w1 = 0;
_w2 = 0;
_w3 = 0;
_streetrepold = 0;
_LetzterKontostand = 0;
_prevINV_InventarArray = [];
_money_limit = 10000000;


tags_loop = {
	call disableSerialization;
		while {true} do

		{

		for [{_i=1}, {_i < 25}, {_i=_i+2}] do
		
		{

			_range 	= _i;
			_dirV = vectorDir vehicle player;
			_pos = player modelToWorld [0,0,0];
			_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
			_atms = nearestObjects [_posFind,["Man"],2];
					if(count _atms > 0)then

					{

					_atm = _atms select 0;
					_distTP = (_atm distance player);

					if(_atm in coinmachines and _distTP < 3) then

						{

						titleRsc["Rtags", "PLAIN"];
						_control = (uiNamespace getVariable 'TAGS_HUD') displayCtrl 64438;
						_control ctrlSetText "BANK (E)";

						};

					};
		};
		sleep 0.003;
	};

};

client_loop = {
	private ["_client_loop_i"];
	_client_loop_i = 0; 

	while {_client_loop_i < 5000} do {
		sleep 1;
		_client_loop_i = _client_loop_i + 1;
	};
	[] spawn client_loop;
};

[] spawn client_loop;
//[] spawn tags_loop;