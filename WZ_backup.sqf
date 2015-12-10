// renfort village nord

if (WZ_backup_used == 0) then {
	WZ_backup_used = 1;
	publicVariable "WZ_backup_used";
	_heli2 = ["CPC_nam_heli_UH1N_gunship", getMarkerPos "WZ_backup", getMarkerPos "WZ_WP1", 100, false, WEST] call fn_createPlane;
	_wp1 = (group _heli2) addWaypoint [getMarkerPos "WZ_WP1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp2 = (group _heli2) addWaypoint [getMarkerPos "WZ_target1", 0];
	_wp2 setWaypointType "SAD";
	}
	else
	{ hint "Le support nord a déjà été demandé.";
	};

