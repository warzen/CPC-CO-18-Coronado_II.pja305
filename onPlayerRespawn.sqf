//Spectateur ACRE
[true] call acre_api_fnc_setSpectator;

//Anti mouettes
{
	if(_x isKindOf "seagull") then {
		_x setPos [0,0,500];
		hideobjectglobal _x;
		_x enablesimulationglobal false;
	};
} forEach nearestObjects [player, [], 250];


// intégration mode Spectator

["Initialize", [player]] call BIS_fnc_EGSpectator; 

/*
"VirtualSpectator_F" createUnit [position player, group player, "spectator=this"];
selectPlayer spectator;
spectator switchCamera "EXTERNAL";
 
[] spawn {
  waitUntil {inputAction "inGamePause" > 0};
};
deleteVehicle spectator;
selectPlayer player;
player switchCamera "INTERNAL";
*/