

//bomb = "Bo_GBU12_LGB_MI10" createVehicle [(getMarkerPos "bomb1" select 0),( getMarkerPos "bomb1" select 1), 1];
waitUntil{time > 0};


0 = [] spawn {
	while {true} do {
		_t1 = random 180;
		_t1 = _t1 + 120;
		sleep _t1;
		_rd1 = 1 + floor random 3;
		for "_i" from 1 to _rd1 do {
			bomb = "Bo_GBU12_LGB_MI10" createVehicle [(getMarkerPos "WZ_amb1" select 0),( getMarkerPos "WZ_amb1" select 1), 1];
			sleep 8;
		};
	}; 
};

0 = [] spawn {
	while {true} do {
		_t2 = random 180;
		_t2 = _t2 + 120;
		sleep _t2;
		_rd2 = 1 + floor random 3;
		for "_i" from 1 to _rd2 do {
			bomb = "Bo_GBU12_LGB_MI10" createVehicle [(getMarkerPos "WZ_amb2" select 0),( getMarkerPos "WZ_amb2" select 1), 1];
			sleep 8;
		};
	}; 
};

0 = [] spawn {
	while {true} do {
		_t3 = random 180;
		_t3 = _t3 + 120;
		sleep _t3;
		_rd3 = 1 + floor random 3;
		for "_i" from 1 to _rd3 do {
			bomb = "Bo_GBU12_LGB_MI10" createVehicle [(getMarkerPos "WZ_amb3" select 0),( getMarkerPos "WZ_amb3" select 1), 1];
			sleep 8;
		};
	}; 
};




//fn_createPlane = compile preprocessfile "fn_createPlane.sqf";


for "_i" from 1 to 3 do {
	_heli 				= ["CPC_nam_heli_UH1D", getMarkerPos "WZ_heli1", getMarkerPos "WZ_heli2", 100, false, CIVILIAN] call fn_createPlane;
	_wp = (group _heli) addWaypoint [getMarkerPos "WZ_heli2", 0];
};



0 = [] spawn {
	while {true} do {
		_t4 = random 600;
		_t4 = _t4 + 600;
		sleep _t4;
		_rd4 = 1 + floor random 3;
		for "_i" from 1 to _rd4 do {
			_heli 				= ["CPC_nam_heli_UH1D", getMarkerPos "WZ_heli1", getMarkerPos "WZ_heli2", 100, false, CIVILIAN] call fn_createPlane;
			_wp = (group _heli) addWaypoint [getMarkerPos "WZ_heli2", 0];
			sleep 7;
		};
	}; 
};