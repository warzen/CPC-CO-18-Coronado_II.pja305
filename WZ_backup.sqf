for "_i" from 1 to 2 do {
	_heli2 				= ["CPC_nam_heli_UH1N_gunship", getMarkerPos "WZ_backup", getMarkerPos "WZ_SAD", 100, false, WEST] call fn_createPlane;
	_wp = (group _heli2) addWaypoint [getMarkerPos "WZ_SAD", 0];
};