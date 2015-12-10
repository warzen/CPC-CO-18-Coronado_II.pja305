// renfort village sud

if (WZ_backup2_used == 0) then {
	WZ_backup2_used = 1;
	publicVariable "WZ_backup2_used";
	_heli2 = ["CPC_nam_heli_UH1N_gunship", getMarkerPos "WZ_backup2", getMarkerPos "WZ_WP2", 100, false, WEST] call fn_createPlane;
	_wp1 = (group _heli2) addWaypoint [getMarkerPos "WZ_WP2", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp2 = (group _heli2) addWaypoint [getMarkerPos "WZ_target2", 0];
	_wp2 setWaypointType "SAD";
	}
	else
	{ hint "Le support sud a déjà été demandé.";
	};